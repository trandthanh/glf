class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:gestionlocative, :devenirlocataire, :vendre, :acheter]

  def gestionlocative
    @message = Message.new(params[:message])
    @gestionloc = true
  end

  def devenirlocataire
    @message = Message.new(params[:message])
    @devenirloc = true
  end

  def vendre
    @message = Message.new(params[:message])
    @vendrebien = true
  end

  def acheter
    @message = Message.new(params[:message])
    @acheterbien = true
  end
end
