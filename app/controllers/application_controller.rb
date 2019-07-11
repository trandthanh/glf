class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_mail

  private

  def set_mail
    @mail = params[:mail]
  end

end
