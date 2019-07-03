class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:gestionlocative, :devenirlocataire, :vendre, :acheter]

  def gestionlocative
  end

  def devenirlocataire
  end

  def vendre
  end

  def acheter
  end
end
