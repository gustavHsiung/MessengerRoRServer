class TweetController < ApplicationController
  respond_to :html
  protect_from_forgery :except => [:update, :delete, :create]
  def create
      
      @tweet = Tweet.create(:message=> params[:randomFilename], :photo =>params[:media])
      respond_with(:admin, @tweet)
    end
end
