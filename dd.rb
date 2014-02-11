require 'open-uri'
require 'nokogiri'

10001.upto(10050) do |x|
	url = "http://movie.naver.com/movie/bi/mi/basic.nhn?code=#{x}"
	page = Nokogiri::HTML(open(url))

	page.css('title').each do |link|
		puts link.content
	end
	
	# title = page.search("title").inner_html

	# title_edit = title.split(':')[0]
	# puts "#{x}, #{title_edit}"
end

