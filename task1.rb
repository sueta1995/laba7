class Rand
  def initialize
  end

  def self.r_pos
    (1..100).to_a.sample
  end

  def self.r_neg
    (-100..1).to_a.sample
  end
end

class Prog
  def initialize
    @file_input = (1..100).to_a.collect { |x| x = Rand.r_neg }
  end

  def create_f
    File.open("F.txt", "w") do |f|
      f.puts @file_input
    end
  end

  def sort
    arr = []

    File.open("F.txt", "r") do |f|
      while line = f.gets
        arr << line.to_i
      end
    end

    p arr
  end


end
  