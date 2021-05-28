class GenresController < ApplicationController
  
  def index
  @genre = Genre.find(params[:id])
  @genres = Genre.all
  end

end
