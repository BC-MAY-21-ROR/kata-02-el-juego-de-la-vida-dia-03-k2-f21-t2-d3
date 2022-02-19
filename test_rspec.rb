# frozen_string_literal: true

require 'rspec'
require_relative 'game_of_live'

RSpec.describe Grid, '#Grid' do
  
  grid = Grid.new(2, 2)

  it 'Has a x value greater than 0' do
    expect(grid.rows).to be > 0
  end

  it 'Has a y value greater than 0' do
    expect(grid.cols).to be > 0
  end

  it 'should have the desired size' do
    expect(grid.grid.sum(&:size)).to eq(grid.rows*grid.cols)
  end

#   describe '.alive?' do
#       it 'Should return true or false' do
#           flag = true
#           if grid.grid[0][0] == '♥'
#               flag = true
#           else
#               flag = false
#           end
#           expect(grid.alive?(0,0) ).to eq(flag) 
#       end
#   end

#   describe '.fill' do
#       it "Should fill the matrix with a ♡ or a ♥ " do
#           expect(grid.grid[0][0]).to include("♡","♥")
#       end
#   end
end
