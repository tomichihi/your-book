class GenresController < ApplicationController
  
  def index
    @genre = Genre.find(params[:format])
    @intros = Intro.all
  end

end
