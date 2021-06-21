class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:gestionlocative, :devenirlocataire, :vendre, :acheter]

  def gestionlocative
    @message = Message.new(params[:message])
    @gestionloc = true
  end

  def devenirlocataire
    @message = Message.new(params[:message])
    @devenirloc = true
    @flats = Flat.all
    mapMarkers(@flats)
  end

  def vendre
    @message = Message.new(params[:message])
    @vendrebien = true
  end

  def acheter
    @message = Message.new(params[:message])
    @acheterbien = true
    @flats = Flat.all
    mapMarkers(@flats)
  end

  def mapMarkers(flats)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        show_window: true,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end
end
