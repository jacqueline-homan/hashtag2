Twitter.configure do |twitter|
  twitter.consumer_key = ENV['TFWS_KEY']
  twitter.consumer_secret = ENV['TFWS_SECRET']
  #twitter.oauth_token = ENV['TWITTER_OAUTH_TOKEN']
  #twitter.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET']
end