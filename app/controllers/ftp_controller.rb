require 'net/sftp'
require 'uri'
require 'zip'
require 'csv'

class FtpController < ApplicationController
  include UpdateFlatConcern
  include UpdateEquipementConcern

  skip_before_action :authenticate_user!

  def upload
    sftptogo_url = ENV['SFTPTOGO_URL']
    uri = URI.parse(sftptogo_url)
    filepath = File.expand_path(File.dirname(__FILE__) + "../../../storage/csv/netty_annonce.zip")

    Net::SFTP.start(uri.host, uri.user, :password => uri.password) do |sftp|
      sftp.download!("glf.zip", filepath)
    end

    csv_path = File.expand_path(File.dirname(__FILE__) + "../../../storage/csv/annonce_unzip")
    extract_zip(filepath, csv_path)
    
    references_agence = []
    csv_options = { col_sep: '!#', quote_char: '"', encoding: "Windows-1252", headers: :first_row, header_converters: :symbol }
    CSV.foreach(File.expand_path(File.dirname(__FILE__) + "../../../storage/csv/annonce_unzip/Annonces.csv"), csv_options) do |row|
      flat = Flat.find_or_create_by(reference_agence_du_bien: row[:rfrence_agence_du_bien])
      update_flat_attributes(flat, row)
      equipement = Equipement.find_or_create_by(flat: flat)
      update_equipement_attributes(equipement, row)
      references_agence << row[:rfrence_agence_du_bien]
    end

    Flat.all.each { |f| f.destroy if !references_agence.include?(f.reference_agence_du_bien) }
  end

  def extract_zip(filepath, destination)
    FileUtils.mkdir_p(destination)
    Zip::File.open(filepath) do |zip_file|
      zip_file.each do |f|
        fpath = File.join(destination, f.name)
        zip_file.extract(f, fpath) unless File.exist?(fpath)
      end
    end
  end
end