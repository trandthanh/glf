class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :apropos, :contact, :recrutement, :syndic, :documents_legaux]

  def home
    @disable_footer = true
  end

  def apropos
  end

  def accueil
  end

  def rejoignez
  end

  def contact
    @message = Message.new(params[:message])
    @contact = true
  end

  def recrutement
    @message = Message.new(params[:message])
  end

  def documents_legaux
    @message = Message.new(params[:message])
    @contact = true
  end

  def syndic
  end
end
