class TweetsController < ApplicationController
  before_action :authenticate_admin!
  require 'twitter'
  def new
  end
  def create
    @input = params['input']
    
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = 'kjAkJECqGqGgbp8rTjKb3g7t8'
      config.consumer_secret = 'zgCuZYJXaH4ACLRzJK3gsZFw5S9IrrXEVkQr72sWY09IDSgz8Z'
    end
    @result = @client.user_timeline(@input, :count => 25)
    respond_to do |format|
      format.js {render layout: false}
    end
  end
end
