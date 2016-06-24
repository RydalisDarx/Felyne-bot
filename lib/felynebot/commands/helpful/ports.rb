module FelyneBot
	module Commands
		module Ports
			extend Discordrb::Commands::CommandContainer
			command(
					:ports,
					description: "Ports list.",
					useage: "ports"
			) do |event|
				event << "http://i.imgur.com/eLElIe8.png"
				puts "#{event.timestamp}: #{event.user.name}: CMD: ports"
				nil
			end
		end
	end
end