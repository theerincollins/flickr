class ImagesController < ApplicationController

  def new
    @user = current_user
    @image = @user.images.new
  end

  def create
    @user = current_user
    @image = @user.images.new(image_params)
    if @image.save
      flash[:notice] = "Cool image dawg!"
      redirect_to user_path(@user)
    else
      flash[:alert] = "You screwed up!"
      render :new
    end
  end


  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:description, :file)
  end


end
