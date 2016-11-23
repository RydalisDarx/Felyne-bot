module FelyneBot
	module Extras
		module News
			def news_pull
				$currentnews = open('http://mho.qq.com/webplat/info/news_version3/5499/5500/5501/m4027/list_1.shtml').read
				$currentnews.gsub!(/.*?(?=<ul class="newsList">)/im, "")
				$currentnews.delete! "\s"
				File.write('bot/newnews', $currentnews)
				puts "news gathered!"
			end
		end
	end
end