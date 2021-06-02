class GenresController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @genre = Genre.find(params[:format])
    @intros = Intro.all
  end

end
