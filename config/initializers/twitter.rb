Twitter.configure do |twitter|
  twitter.consumer_key = ENV['TFWS_KEY']
  twitter.consumer_secret = ENV['TFWS_SECRET']
  twitter.access_token = ENV['TWITTER_ACCESS_TOKEN']
  twitter.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
end