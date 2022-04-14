class PhilosophersController < ApplicationController
  before_action :check_for_login

  def index
    @philosophers = Philosopher.all
  end

  def show
    @philosopher = Philosopher.find(params[:id])
  end

  def new
    @philosopher = Philosopher.new
  end

  def create
    philosopher = Philosopher.create philosopher_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      philosopher.image = req["public_id"]
    end
    philosopher.update_attributes(philosopher_params)
    # philosopher.save
    redirect_to philosopher_path(philosopher)
  end


  def edit
    @philosopher = Philosopher.find(params[:id])
  end

  def update
    philosopher = Philosopher.find(params[:id])
      if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      philosopher.image = req["public_id"]
      end
      philosopher.update_attributes(philosopher_params)
      philosopher.save
      redirect_to philosopher_path
  end

  def destroy
    Philosopher.find(params[:id]).destroy
    redirect_to philosophers_path
  end

  private
  def philosopher_params
    params.require(:philosopher).permit(:title, :image)
  end
end