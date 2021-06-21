class FlatsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @message = Message.new(params[:message])
    @devenirloc = true
    @flat = Flat.find(params[:id])
    @markers = [
      {
        lat: @flat.latitude,
        lng: @flat.longitude,
        show_window: false
      }
    ]
  end
end
