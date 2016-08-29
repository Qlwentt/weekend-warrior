class Xmas
	def self.gifts(day)
		list_of_gifts=[["a partridge in a pear tree", "and a partridge in a pear tree"],
					  	["two turtle doves","and a partridge in a pear tree"],
					  	["three french hens", "two turtle doves", "and a partridge in a pear tree"],
					  	["four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
					  	["FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
					  	["six geese-a-laying","FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
					  	["seven swans-a-swimming","six geese-a-laying","FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
					  	["eight maids-a-milking","seven swans-a-swimming","six geese-a-laying","FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
					    ["nine ladies dancing","eight maids-a-milking","seven swans-a-swimming","six geese-a-laying","FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
					    ["ten lords-a-leaping","nine ladies dancing","eight maids-a-milking","seven swans-a-swimming","six geese-a-laying","FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
						["eleven pipers piping","ten lords-a-leaping","nine ladies dancing","eight maids-a-milking","seven swans-a-swimming","six geese-a-laying","FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"],
						["twelve drummers drumming","eleven pipers piping","ten lords-a-leaping","nine ladies dancing","eight maids-a-milking","seven swans-a-swimming","six geese-a-laying","FIVE GOLDEN RINGS","four calling birds","three french hens", "two turtle doves", "and a partridge in a pear tree"]]
		return list_of_gifts[day]
	end
	
	def self.verse(number)
		verses=["#{get_intro(0)}\n#{self.gifts(0).first}"]
		(1..11).each do |i|
			verses << "#{get_intro(i)}\n#{self.gifts(i).join("\n")}"
		end
		return verses[number]
	end

	def self.sing
		song=""
		12.times do|i|
			if i!=11
				song << self.verse(i)+"\n\n"
			else
				song << self.verse(i)
			end
		end
		return song
	end

	private
	def self.get_intro(number)
		ordinal=["first","second","third","fourth","fifth","sixth","seventh","eighth", "ninth", "tenth","eleventh","twelfth"]
		return "On the #{ordinal[number]} day of Christmas my true love gave to me"
	end
end

#I think it is ridiculous that I spent 30 mintues trying to 
#figure out why I was failing the test and it was because they
#had an extra return at every line..cmon really?
