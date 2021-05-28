class ProfilesController < ApplicationController
  before_action :set_user, only: [:edit, :update,:show]
  before_action :set_profile, only: [:edit, :update, :show]
  
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profile_path
    else
      render :edit
    end
  end

  def show
  end

  private
   def profile_params
     params.require(:profile).permit(:hobby, :favorite, :comment).merge(user_id: current_user.id)
   end

   def set_user
     @user = User.find(params[:id])
   end

   def set_profile
     @profile = Profile.find(params[:id])
   end

end
