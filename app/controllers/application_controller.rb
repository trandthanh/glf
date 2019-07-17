class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_mail_titre

  private

  def set_mail_titre
    @mail = params[:mail]
    @titre = params[:titre]
  end

end
