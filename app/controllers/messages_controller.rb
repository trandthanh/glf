class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @message = Message.new(params[:message])
    @message.request = request
    respond_to do |format|
      if @message.deliver
        @message = Message.new
        format.html { render 'services/gestionlocative' }
        format.js   { flash.now[:success] = @notice = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'services/gestionlocative' }
        format.js   { flash.now[:error] = @notice = "Message did not send." }
      end
    end
  end
end



