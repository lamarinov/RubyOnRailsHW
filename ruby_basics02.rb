def missing_letter
  str = gets.chomp
  arr = [*'a'..'z', *'A'..'Z'].reject {|x| x < str[0] || x > str[-1]}
  puts arr.reject {|x| str.include?(x)}[0]
end

def multiples_of_3_and_5
  bound = gets.chomp.to_i
  puts (2...bound).inject(0) { |sum, item| (item % 3).zero? || (item % 5).zero? ? sum + item : sum}
end

def digital_root
  num = gets.chomp.to_i
  puts num - 9 * ((num - 1) / 9).floor
end