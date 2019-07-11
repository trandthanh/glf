class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:gestionlocative, :devenirlocataire, :vendre, :acheter]

  def gestionlocative
    @message = Message.new(params[:message])
    @mail = "diane.jroussillon@gmail.com"
  end

  def devenirlocataire
    @message = Message.new(params[:message])
    @mail = "gl"
  end

  def vendre
    @message = Message.new(params[:message])
  end

  def acheter
    @message = Message.new(params[:message])
  end
end
