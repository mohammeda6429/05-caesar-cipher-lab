def caesar_encode(string,offset)
  # code
  low_array = [*("a".."z")]
  lower = low_array.rotate(offset)
  cap_array = [*("A".."Z")]
  cap = cap_array.rotate(offset)
  string.split("").collect do |letter|
    if low_array.include?(letter)
      letter = lower[low_array.index(letter)]
       letter
      elsif cap_array.include?(letter)
      letter = cap[cap_array.index(letter)]
       letter
    else
      letter
  end
  end.join("")
end

# def caesar_decode(string,offset)
#     lower_arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
#     lower = lower_arr.rotate(-offset)
#     upper_arr = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
#     upper = upper_arr.rotate(-offset)
#     string.split("").collect do |letter|
#         if lower_arr.include?(letter)
#             letter = lower[lower_arr.index(letter)]
#              letter
#             elsif upper_arr.include?(letter)
#             letter = upper[upper_arr.index(letter)]
#           letter
#           else
#             letter
#   end
#   end.join("")
# end 
 puts "What would you like to encode?"
 user_string = gets.chomp
 puts "What do you want the offset to be?"
 user_offset = gets.chomp.to_i
 puts caesar_encode(user_string,user_offset)
 puts caesar_decode(user_string,user_offset) 