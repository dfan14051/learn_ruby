class Book
	attr_accessor :title

	def title
		formatted_title = ""
		count = 1
		restrictions = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
		@title.split.each do |word|
			if (!restrictions.include?(word.downcase) || count == 1 || count == @title.split.length)
				formatted_title += "#{word.to_s.capitalize} "
			else
				formatted_title += "#{word.to_s} "
			end
			count += 1;
		end
		formatted_title.chomp(" ")
	end
end
