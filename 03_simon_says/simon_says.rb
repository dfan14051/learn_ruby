#write your code here
def echo to_echo
	to_echo
end

def shout to_shout
	to_shout.upcase
end

def repeat(to_repeat, count = 2)
	value = to_repeat
	(count-1).times do
		value += " #{to_repeat}"
	end
	value
end

def start_of_word word, index
	word[0, index]
end

def first_word input
	input.split[0]
end

def titleize to_titleize
	little_words = ["and", "or", "the", "over", "to", "the", "a", "but"]
	value = ""
	count = 0
	to_titleize.split.each do |i|
		if ( !little_words.include?(i.downcase) || count == 0 )
			value += "#{i.capitalize} "
		else
			value += "#{i} "
		end
		count += 1
	end
	value.chomp(" ")
end