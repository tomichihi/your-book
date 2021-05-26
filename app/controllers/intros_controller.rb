class IntrosController < ApplicationController
  
  def index

  end

  def new
     @intro = Intro.new
  end
  
  def create
    @intro = Intro.new(intro_params)
    if @intro.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update

  end
  
  def show
    
  end

  private
  def intro_params
    params.require(:intro).permit(:name, :book, :review, :category, :image).merge(user_id: current_user.id)
  end

end
