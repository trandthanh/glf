class FtpController < ApplicationController
  skip_before_action :authenticate_user!
  
  def new
    FlatsFromCsv.call
  end
end