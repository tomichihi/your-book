class CommentsController < ApplicationController
   before_action :authenticate_user!, only: [:create]
   def create
    @intro = Intro.find(params[:intro_id])
    @comment = Comment.create(comm_params)
    @comments = @intro.comments 
    
    if @comment.save
     redirect_to intro_path (@comment.intro)
     else
     render "intros/show"
    end
   end
 
   private
   def comm_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, intro_id: params[:intro_id])
   end

 
end
