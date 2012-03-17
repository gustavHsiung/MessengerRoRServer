class TweetController < ApplicationController
  respond_to :html, :js
  protect_from_forgery :except => [:update, :delete, :create]
  def create
      @tweet = Tweet.create(:message=> params[:randomFilename], :photo =>params[:media])
      render :text => @tweet.photo.url
    end
end
