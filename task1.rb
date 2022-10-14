class Rand
  def initialize
  end

  def self.r_pos
    (1..100).to_a.sample
  end

  def self.r_neg
    (-100..-1).to_a.sample
  end
end

class Prog
  def initialize cnt
    @file_input, @arr, @cnt = (0..199).to_a.collect { |x| x / 10 % 2 == 0 ? x = Rand.r_pos : x = Rand.r_neg }, [], cnt
  end

  def exec
    self.create_f
    self.open_f

    self.sort
    self.create_g
  end

  private

  def create_f
    puts "Создание файла F.txt"

    File.open("F.txt", "w") { |f| f.puts @file_input }
  end

  def open_f
    puts "Открытие файла F.txt"

    File.open("F.txt", "r") do |f|
      while line = f.gets
        @arr << line.to_i
      end
    end
  end

  def sort
    puts "Расспределение: #{@cnt} положительных, #{@cnt} отрицательных"

    arr_pos, arr_neg = @arr.select { |x| x > 0 }, @arr.select { |x| x < 0 }
    @arr = []

    (0..200 / @cnt - 1).each do |x| 
      if x % 2 == 0 
        @arr = @arr + arr_pos[0..@cnt - 1]
        arr_pos = arr_pos[@cnt..-1]
      else 
        @arr = @arr + arr_neg[0..@cnt - 1]
        arr_neg = arr_neg[@cnt..-1]
      end
    end
  end

  def create_g
    puts "Запись в файл G.txt"

    File.open("G.txt", "w") { |f| f.puts @arr }
  end
end
