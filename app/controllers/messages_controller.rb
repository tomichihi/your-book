class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create, :show]   
    def index
      @room = Room.find(params[:room_id])
      @message = Message.new
      @messages = @room.messages.includes(:user).order(created_at: :desc)
    end 

    def create
      @room = Room.find(params[:room_id])
      @message = @room.messages.create(message_params)    
      render :show
    end
  
    private 
    def message_params
      params.require(:message).permit(:content).merge(user_id: current_user.id)
    end
    
end
