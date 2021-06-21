require 'net/sftp'
require 'uri'
require 'zip'
require 'csv'

class FtpController < ApplicationController
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
    
    csv_options = { col_sep: '!#', quote_char: '"', headers: :first_row, header_converters: :symbol, encoding: "Windows-1252" }
     CSV.foreach(File.expand_path(File.dirname(__FILE__) + "../../../storage/csv/annonce_unzip/Annonces.csv"), csv_options) do |row|
      puts "#{row[0]}, #{row[1]}"
      raise
     end 
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
