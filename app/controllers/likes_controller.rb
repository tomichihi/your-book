class LikesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @intro = Intro.find(params[:intro_id])
    Like.create(user_id: current_user.id, intro_id: @intro.id)
  end

  def destroy
    @intro = Intro.find(params[:intro_id])
    @like = Like.find_by(user_id: current_user.id, intro_id: @intro.id)
    @like.destroy
  end

end
