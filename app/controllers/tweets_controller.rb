class TweetsController < ApplicationController

	$twitter = Twitter::REST::Client.new do |config|
  		config.consumer_key        = "bRj37T3Umry1I8CK1bsKZgtHs"
  		config.consumer_secret     = "98V4UQ61qgnQwnDKvE2RyuvcYihdybQ28sqGdJXegZkaJDZqRf"
  		config.access_token        = "569895380-eB4zJdztfIMwnnexgt1rFYJpqW0LMzTJ4qqFthl5"
  		config.access_token_secret = "NVSiUPHJpEukH7JClS6RPlOSKMXiR5frdyxD7o1KC8XEM"
  end
  	
  def index
		  @tweets = []
      $twitter.user_timeline('f1', count: 20, includes_rts: true).each do |object|
 		  
        if object.is_a?(Twitter::Tweet)
           @tweets.push(object.text)
 	      end
  end

	end
end