def cipher(phrase, number)
  char_array = phrase.split ""
  numeral_representation = char_array.map {|char| char.ord}
  ciphered_array = [] 
  numeral_representation.each do |num|
    for i in (1..number) do
      if num < "A".ord or num > "z".ord or num > "Z".ord and num < "a".ord
        break
      elsif num == "Z".ord
        num = "A".ord
      
      elsif num == "z".ord
        num = "a".ord
      else
        num += 1
      end
    end
    ciphered_array << num
  end
  ciphered_phrase = ciphered_array.map {|num| num.chr}
  return ciphered_phrase.join ''
end
puts cipher("What a string!", 5)