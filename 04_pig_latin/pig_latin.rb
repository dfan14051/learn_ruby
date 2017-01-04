#write your code here
def translate(sentence)
	pig_sentence = ""
	words = sentence.split
	words.each do |word|
		pig_word = word
		first_letter = pig_word[0]
		vowels = ["a", "e", "i", "o", "u"]
		phoneme = false

		while !pig_word.start_with?(*vowels) || phoneme
			pig_word = pig_word[1, pig_word.length]
			pig_word += first_letter
			first_letter = pig_word[0]
			if(first_letter == "u")
				phoneme = true
			else
				phoneme = false
			end
		end
		pig_word += "ay"
		pig_sentence += "#{pig_word} "
	end
	pig_sentence.chomp(" ")
end