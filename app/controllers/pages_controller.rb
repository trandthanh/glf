class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :apropos, :contact, :recrutement, :syndic]

  def home
    @disable_footer = true
  end

  def apropos
  end

  def contact
    @message = Message.new(params[:message])
    @contact = true
  end

  def recrutement
    @message = Message.new(params[:message])
  end

  def syndic
  end
end
