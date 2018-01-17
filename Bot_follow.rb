require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "remplir avec vos clés d'API"
  config.consumer_secret     = "remplir avec vos clés d'API"
  config.access_token        = "remplir avec vos clés d'API"
  config.access_token_secret = "remplir avec vos clés d'API"
end


# ligne qui permet de follow à tout les journalistes

["@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon"].each do |journalist|


	journalist.delete!'@'

	client.follow(journalist)

		puts "Journalistes ajoutés : #{journalist} "
end

		puts "Journalistes bien ajoutés sur twitter"
