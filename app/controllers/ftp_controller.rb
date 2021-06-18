require 'net/sftp'
require 'uri'

class FtpController < ApplicationController
  skip_before_action :authenticate_user!

  # def upload
  #   sftptogo_url = ENV['SFTPTOGO_URL']
    
  #   uri = URI.parse(sftptogo_url)
    
  #   Net::SFTP.start(uri.host, uri.user, :password => uri.password) do |sftp|
  #     sftp.download!("Netty_annonces_(3).csv", File.expand_path(File.dirname(__FILE__) + "../../../storage/csv/netty_annonce.csv"))
  #   end
  # end
end
