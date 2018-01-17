require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "remplir avec vos clés d'API"
  config.consumer_secret     = "remplir avec vos clés d'API"
  config.access_token        = "remplir avec vos clés d'API"
  config.access_token_secret = "remplir avec vos clés d'API"
end


# ligne qui permet de tweeter à tout les journalistes

["@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon"].each do |journalist|


client.update( journalist + ' Bonjour, je vous informe que je vous tweet grâce à un bot Ruby, 
				jai appris à faire ça avec TheHackingProject.org')

		puts "envoi du tweet à #{journalist}"
end
		puts "tweets envoyés !"
		