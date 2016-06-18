module FelyneBot
	module Commands
		module Raid
			extend Discordrb::Commands::CommandContainer
			command(:raid) do |event|
				now = Time.now
				now = now.to_i
				if File.zero?("bot/raid1")
					raid1 = "```Raid 1:  No raid set up."
				else
					name1=IO.readlines("bot/raid1")[0]
					name1=name1.gsub("\n","")
					time1=IO.readlines("bot/raid1")[1].to_i
					timediff1 = time1 - now - 3600
					if time1 < now
						raid1 = "```Raid 1:  In process or Completed"
					else
						raid1 = "```Raid 1:  #{name1} in #{Time.at(timediff1).strftime('%H hours %M minutes %S seconds')}"
					end
				end
			end
		end
	end
end