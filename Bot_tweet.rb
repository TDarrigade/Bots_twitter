# ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "remplir avec vos clés d'API"
  config.consumer_secret     = "remplir avec vos clés d'API"
  config.access_token        = "remplir avec vos clés d'API"
  config.access_token_secret = "remplir avec vos clés d'API"
end
# ligne qui permet de tweeter

puts "Que voulez-vous tweeter?"

message = gets.chomp 

client.update(message)

puts "message tweeté" #indique si le bot a fonctionné
