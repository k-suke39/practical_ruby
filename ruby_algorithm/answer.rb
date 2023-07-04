def algorithm_01(number)
  response = []
  1.upto(number) do |num|
	if num % 5 == 0 && num % 3 == 0
	response << "らんてくん"
	elsif num % 5 == 0
	response << "くん"
	elsif num % 3 == 0
	response << "らんて"
	else 
	response << num
	end
  end
  response
end

def algorithm_02(word)
  word.reverse
end

def algorithm_03(word)
  odd_string = []
  even_string = []

  word.each_char.with_index{|c, index|
   index % 2 == 0 ? odd_string << c : even_string << c
  }
  odd_string.join + even_string.join
end

def algorithm_04(text)
  text = text.delete(",.").split
  response = text.map( &:length)
end
