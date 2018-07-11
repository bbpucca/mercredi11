require 'twitter'
require 'dotenv/load'


# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["a"]
  config.consumer_secret     = ENV["b"]
  config.access_token        = ENV["c"]
  config.access_token_secret = ENV["d"]
end
p client.update("ruby ")


array_of_pseudo = ["@lavoogue","@BotRigolo"]

array_of_pseudo.each do |pseudo|
	pseudo[0] = ""

	client.follow(pseudo)



end