class TopicsController < ApplicationController
  before_action :check_for_login
  
    def index
      @topics = Topic.all
    end
  
    def show
      @topic = Topic.find params[:id]
    end
  
    def new
      @topic = Topic.new
    end
  
    def create
      topic = Topic.new topic_params
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        topic.image = req["public_id"]
      end
      topic.update_attributes(topic_params)
      topic.save
      redirect_to topic_path(topic)
    end
  
  
    def edit
      @topic = Topic.find(params[:id])
    end
  
    def update
      topic = Topic.find(params[:id])
        if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        topic.image = req["public_id"]
        end
        topic.update_attributes(topic_params)
        topic.save
        redirect_to topic_path
    end
  
    private
    def topic_params
      params.require(:topic).permit(:name)
    end
  end
