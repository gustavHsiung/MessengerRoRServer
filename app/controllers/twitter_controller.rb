class TwitterController < ApplicationController
    def upload
        @photo = Photo.new(params[:media])
        @filename = params[:randomFilename]
        render :text => @filenam
    end
end
