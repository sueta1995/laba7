# frozen_string_literal: true

require './task2'

obj1 = Rect.new(gets.chomp.to_f, gets.chomp.to_f)

puts "Является ли данный прямоугольник квадратом: #{obj1.square?}"
puts 'Стороны прямоугольника:'
obj1.print

puts

obj2 = Cuboid.new(gets.chomp.to_f, gets.chomp.to_f, gets.chomp.to_f)

puts "Является ли данный параллепипед кубом: #{obj2.cube?}"
puts 'Стороны параллепипеда:'
obj2.print
