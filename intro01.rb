def how_many_ones
  puts gets.to_i.to_s(2).count('1')
end

def divisors
  num = gets.to_i
  puts (2...num).select { |x| num % x == 0}.to_s
end

def filter
  text = gets
  output =text.scan(/\S{5,}/).join(' ')
  output = 'ruby' unless text.match(/\S{5,}/)
  puts output
end

def dont_give_me_fives
  low = gets.to_i
  high = gets.to_i
  puts (low..high).count {|x| !x.to_s.match(/5/)}
end