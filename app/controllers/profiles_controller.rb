class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :update]
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
        image_params.each do |image|
          @profile.photos.create(image: image)
        end
      redirect_to profile_path(@profile), notice: "Profile successfully created"
    else
      render :new
    end
  end

  def edit

  end

  def show
    @profile = current_user.profile
    @photos = @profile.photos
    @artists = current_user.favorite_artists
  end

  def update
    if @profile.update(profile_params)
        image_params.each do |image|
          @profile.photos.create(image: image)
        end
      redirect_to profile_path(@profile), notice: "Profile successfully updated"
    else
      render :edit
    end
  end

  private

  def image_params
  params[:images].present? ? params.require(:images) : []
  end

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:firstname, :lastname, :bio )
  end
end
