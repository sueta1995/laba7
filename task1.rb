# frozen_string_literal: true

# class for generating random numbers
class Rand
  def self.r_pos
    rand(1..100)
  end

  def self.r_neg
    rand(-100..-1)
  end
end

# main class
class Prog
  def initialize(cnt)
    @file_input = (0..199).to_a.collect { |x| (x / 10 % 2).zero? ? Rand.r_pos : Rand.r_neg }
    @arr = @arr_pos = @arr_neg = []
    @cnt = cnt
  end

  def exec
    create_f
    open_f
    sort
    create_g
  end

  private

  def create_f
    puts 'Создание файла F.txt'

    File.open('F.txt', 'w') { |f| f.puts @file_input }
  end

  def open_f
    puts 'Открытие файла F.txt'

    @arr = File.readlines('F.txt', chomp: true).collect(&:to_i)

    @arr_pos = @arr.select(&:positive?)
    @arr_neg = @arr.select(&:negative?)
    @arr = []
  end

  def sort
    puts "Расспределение: #{@cnt} положительных, #{@cnt} отрицательных"

    (0..200 / @cnt - 1).each do |x|
      if (x % 2).zero?
        @arr += @arr_pos[0..@cnt - 1]
        @arr_pos = @arr_pos[@cnt..]
      else
        @arr += @arr_neg[0..@cnt - 1]
        @arr_neg = @arr_neg[@cnt..]
      end
    end
  end

  def create_g
    puts 'Запись в файл G.txt'

    File.open('G.txt', 'w') { |f| f.puts @arr }
  end
end
