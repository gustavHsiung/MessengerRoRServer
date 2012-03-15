class PhotosController < ApplicationController
  def create
    logger.info "IMAGE::CONTROLLER::CREATE=>" + params[:randomFilename]
    @image = Image.new(:title=>params[:randomFilename],:message=>params[:randomFilename],:photo => params[:media])
    render :nothing => true
    
    end
end
