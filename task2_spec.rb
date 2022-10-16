# frozen_string_literal: true

require 'rspec'
require_relative 'task2'

describe 'task2 hierarcy' do
  context 'checking hierarchy for A' do
    it 'returns class B' do
      expect(Rect.subclasses[0]).to eq Cuboid
    end
  end

  context 'checking hierarchy for B' do
    it 'returns class A' do
      expect(Cuboid.superclass).to eq Rect
    end
  end
end

describe 'task2 functions' do
  context 'checking square? function' do
    it 'returns false if sides are different' do
      expect(Rect.new(1, 2).square?).to eq false
    end

    it 'returns true if sides are equal' do
      expect(Rect.new(5, 5).square?).to eq true
    end
  end

  context 'checking cube? function' do
    it 'returns false if edges are different' do
      expect(Cuboid.new(3, 4, 5).cube?).to eq false
    end

    it 'returns true if edges are equal' do
      expect(Cuboid.new(6, 6, 6).cube?).to eq true
    end
  end
end
