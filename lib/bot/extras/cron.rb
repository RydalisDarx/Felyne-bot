def cronjobs_start
	scheduler = Rufus::Scheduler.new

#	unless File.exist?("botfiles/raids")
#		Dir.mkdir("botfiles/raids")
#	end
	
	scheduler.every '10s' do
		clock=Time.new
		puts "[#{clock.inspect}] Checking for raids"
		$raids.each do |key, array|
			puts key
			puts array
		end










	end
#		Dir["botfiles/raids/*"].each { |x| 
#			begin
#				channel = x
#				channel.slice! "botfiles/raids/"
#				puts ">Loading raids for: #{channel}"
#				raids = loadArr(raids,"botfiles/raids/#{channel}")
#				pos = 0
#				begin
#					t4 = raids[pos]
#					t4 = Time.parse(t4)
#					if t4.past?
#						$bot.send_message(channel, "Raid for #{raids[pos+1]}")
#						puts ">    Posting raid to #{channel}! Deleting reminder!"
#						raids.delete_at(pos+1)
#						raids.delete_at(pos)
#						pos -= 2
#					end
#					pos += 2
#				end while pos < raids.length
#
#				if raids.length == 0
#					File.delete("botfiles/raids/#{channel}")
#					puts ">        No more raids exist for #{channel}! Deleting file!"
#				else
#					File.write("botfiles/raids/#{channel}", raids)
#				end
#			rescue
#				puts "There is an error with the raids for #{channel}"
#			end
#		}

	scheduler.cron '5 */3 * * *' do
		$bot.stop
	end
	puts 'Cron jobs scheduled!'
end