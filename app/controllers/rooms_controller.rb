class RoomsController < ApplicationController
  before_action :authenticate_user!, only: [:index,:new,:create,:destroy]
 
   def index
   end
  
   def new
      @room = Room.new
   end
  
   def create
     @room = Room.new(room_params)
     if @room.save
     redirect_to rooms_path     
     else
     render :new
     end
   end
  
  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to rooms_path
  end
  
    private
  
    def room_params
      params.require(:room).permit(:name, user_ids:[])
    end
  
  
end
