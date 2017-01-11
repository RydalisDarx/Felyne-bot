module Commands
	module UserTimezone
		extend Discordrb::Commands::CommandContainer
		command(
				:usertimezone,
				bucket: :delay10,
				description: "Adds timezone for user to the database.",
				usage: "usertimezone <timezone>",
				max_args: 1,
				min_args: 0
		) do |event, timezone=nil|
			temp = $users.find_index {|s| s.id == event.user.id}
			if  temp!=nil then $users[temp].addTimezone(timezone) end
			event.respond "Changed timezone to: #{timezone}"
			saveObj($users,"botfiles/users")
			puts "#{event.timestamp}: #{event.user.name}: CMD: usertimezone <#{timezone}>"
			nil
		end
	end
end