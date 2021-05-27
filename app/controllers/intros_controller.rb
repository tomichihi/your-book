class IntrosController < ApplicationController
  before_action :authenticate_user!, only: [:edit,:update,:destroy,:new]

  def index
     @intros = Intro.all 
  end

  def new
     @intro = Intro.new
  end
  
  def create
    @intro = Intro.create(intro_params)
 
    if @intro.save
      redirect_to root_path 
    else
     render :new
    end
  end

  def edit
    @intro = Intro.find(params[:id])
  
    unless current_user.id == @intro.user_id
      redirect_to action: :index
    end 
  end

  def update
    @intro = Intro.find(params[:id])

    if @intro.update(intro_params)
      redirect_to intro_path
    else
      render :edit
    end
  end

  def destroy
   @intro = Intro.find(params[:id])
   @intro.destroy

   redirect_to root_path
  end
  
  def show
    @intro = Intro.find(params[:id])
    @comment = Comment.new
    @comments = @intro.comments.includes(:user)
  end

  private
  def intro_params
    params.require(:intro).permit(:book, :review, :category_id, :image).merge(user_id: current_user.id)
  end

end
