require './task2'

obj1 = Rect.new(gets.chomp.to_f, gets.chomp.to_f)

puts "Является ли данный прямоугольник квадратом: #{obj1.isSquare}"
puts "Стороны прямоугольника:"
obj1.print

puts

obj2 = Cuboid.new(gets.chomp.to_f, gets.chomp.to_f, gets.chomp.to_f)

puts "Является ли данный параллепипед кубом: #{obj2.isCube}"
puts "Стороны параллепипеда:" 
obj2.print
