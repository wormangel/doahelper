#!/usr/bin/ruby

puts 'name of char:'
char = gets.chomp

puts 'name of char variable:'
charvar = gets.chomp

puts 'number of costumes:'
n = gets.chomp
n = n.to_i

result = ""
for i in 1..n do
  zpad = i.to_s
  if i < 10
    zpad = '0' + i.to_s
  end

  puts 'Costume ' + zpad + ': '

  name = gets.chomp

  if name.nil? or name == ''
    name = 'Costume ' + zpad
  end

  template = "Costume.create(character: @#{charvar}, number: #{i}, name: \'#{char} ##{zpad} - #{name}\')"

  result += template + "\n"
end


puts result
