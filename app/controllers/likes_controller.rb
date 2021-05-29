class LikesController < ApplicationController
  
  def create
    @like = Like.create(user_id: current_user.id, intro_id: params[:intro_id])
    @likes = Like.where(intro_id: params[:intro_id])
    if @like.save
      redirect_to intro_path(@like.intro_id) 
    else
     render 'intro/show'
    end
  end

  def destroy
    @intro = Intro.find(params[:id])
    @like = Like.find_by(user_id: current_user.id, intro_id: @intro.id)
    @like.destroy
    @likes = Like.where(intro_id: params[:intro_id])
    redirect_to intro_path(@like.intro_id) 

  end

end
