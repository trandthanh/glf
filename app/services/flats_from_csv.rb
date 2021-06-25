require 'net/sftp'
require 'uri'
require 'zip'
require 'csv'
require 'fileutils'

class FlatsFromCsv < ApplicationService
  def initialize
    @zip_path = path("../../../storage/csv/netty_annonce.zip")
    @folder_path = path("../../../storage/csv/annonce_unzip")
    @csv_path = path("../../../storage/csv/annonce_unzip/Annonces.csv")
    destroy_file
  end

  def path(file)
    File.expand_path(File.dirname(__FILE__) + file)
  end
  
  def call
    sftptogo_url = ENV['SFTPTOGO_URL']
    uri = URI.parse(sftptogo_url)

    Net::SFTP.start(uri.host, uri.user, password: uri.password) do |sftp|
      sftp.download!("glf.zip", @zip_path)
    end

    extract_zip(@zip_path, @folder_path)
    parse_csv
  end
  
  def parse_csv
    refs = []
    CSV.foreach(@csv_path, csv_options) do |row|
      refs << row[:rfrence_agence_du_bien]
      flat = Flat.find_or_create_by(reference_agence_du_bien: row[:rfrence_agence_du_bien])
      equipement = Equipement.find_or_create_by(flat: flat)

      UpdateFlat.call(flat, row)
      UpdateEquipement.call(equipement, row)
    end

    destroy_flats(refs)
  end

  def csv_options
    { 
      col_sep: '!#', 
      quote_char: '"', 
      encoding: "Windows-1252", 
      headers: :first_row, 
      header_converters: :symbol 
    }
  end

  def destroy_flats(refs)
    Flat.all.each { |f| f.destroy if !refs.include?(f.reference_agence_du_bien) }
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

  def destroy_file
    File.delete(@zip_path)
    FileUtils.rm_rf(@folder_path)
  end
end