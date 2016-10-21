class YoutubeAdapter
	include HTTParty

	@@key = ENV['YOUTUBE_API_KEY']

	def self.find_three_results(query)
		url = "https://www.googleapis.com/youtube/v3/search?key=#{@@key}&type=video&part=snippet&maxResults=3&q=#{query}"

		p HTTParty.get(url).parsed_response
	end
end