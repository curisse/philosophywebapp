class MaterialsController < ApplicationController
  before_action :check_for_login
  
  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    material = Material.create material_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      material.image = req["public_id"]
    end
    material.update_attributes(material_params)
    # material.save
    redirect_to material_path(material)
  end

  def edit
    @material = Material.find(params[:id])
  end

  def update
    material = Material.find(params[:id])
      if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      material.image = req["public_id"]
      end
      material.update_attributes(material_params)
      material.save
      redirect_to material_path
  end

  def destroy
    material[:material_id] = nil
    redirect_to login_path
  end

  private
  def material_params
    params.require(:material).permit(:title)
  end
end
