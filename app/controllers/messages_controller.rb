class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :new]

  def new
    @message = Message.new(params[:message])
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request
    respond_to do |format|
      if @message.deliver
        @message = Message.new
        @mail = params[:message][:recipient_email]
        @titre = params[:message][:titre]
        format.html { render 'new' }
        format.js   { flash[:success] = @notice = "Merci pour votre message, nous revenons vers vous au plus vite !" }
      else
        format.html { render 'new' }
        format.js   { flash[:error] = @notice = "Une erreur s'est produite, veuillez réessayer ou nous contacter au 01 44 18 18 18." }
      end
    end
  end
end



