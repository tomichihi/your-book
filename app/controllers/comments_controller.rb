class CommentsController < ApplicationController
   before_action :authenticate_user!, only: [:create]
   def create
    @intro = Intro.find(params[:intro_id])
    @comment = @intro.comments.create(comm_params) 
    render :show
   end
 
   private
   def comm_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, intro_id: params[:intro_id])
   end

 
end
