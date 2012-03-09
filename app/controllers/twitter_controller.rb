class TwitterController < ApplicationController
    def upload
        @filename = params[:randomFilename]
        render :text => @filenam
    end
end
