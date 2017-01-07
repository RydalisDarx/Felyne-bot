module MainBot
	module Commands
		module UserServer
			extend Discordrb::Commands::CommandContainer
			command(
					:userserver,
					bucket: :delay10,
					max_args: 1,
					min_args: 0,
					description: "Adds server for user to the database.",
					usage: "-userserver <server>"
				) do |event, server=nil|
				temp = $users.find_index {|s| s.id == event.user.id}
				if  temp!=nil then $users[temp].addServer(server) end
				event.respond "Changed server to: #{server}"
				saveObj($users,"botfiles/users")
				puts "#{event.timestamp}: #{event.user.name}: CMD: userserver <#{server}>"
				nil
			end
		end
	end
end