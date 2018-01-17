require 'twitter'

client = Twitter::Streaming::Client.new do |config|  #REST remplacé par streaming 
  config.consumer_key        = "remplir avec vos clés d'API"
  config.consumer_secret     = "remplir avec vos clés d'API"
  config.access_token        = "remplir avec vos clés d'API"
  config.access_token_secret = "remplir avec vos clés d'API"
end



topics = ["coffee", "tea"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end




#client.update('Mon premier tweet en ruby!')

