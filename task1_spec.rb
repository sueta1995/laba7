# frozen_string_literal: true

require 'rspec'
require_relative 'task1'

# class for testing
class Examination
  def self.func(cnt)
    Prog.new(cnt).exec

    file = File.readlines('G.txt', chomp: true).collect(&:to_i)
    check = true

    200.times { |x| check = false if file[x].positive? && (x / cnt).odd? || file[x].negative? && (x / cnt).even? }

    check
  end
end

describe 'task1' do
  context 'working with file F.txt, 5' do
    it 'returns valid G.txt file, 20' do
      expect(Examination.func(5)).to eq true
    end
  end

  context 'working with file F.txt, 20' do
    it 'returns valid G.txt file, 20' do
      expect(Examination.func(20)).to eq true
    end
  end
end
