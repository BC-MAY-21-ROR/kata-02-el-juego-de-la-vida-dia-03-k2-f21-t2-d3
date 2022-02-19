# frozen_string_literal: true

class Grid
    def initialize(row, col)
      @rows = row
      @cols = col
      @grid = []
      fill
    end
  
    attr_reader :rows, :cols, :grid
  
    def fill
      @rows.times do
        row = []
        @cols.times do
          row.push(rand(2) == 1 ? '♥' : '♡')
        end
        @grid.push(row)
      end
    end
  
    def alive?(row, col)
      @grid[row][col] == '♥'
    end
  
    def print_cells
      result=""
      @grid.each do |row|
        result+= row.join('') + "\n"
      end
      result
    end
  
    def set(fresh)
      @grid = fresh
    end
    
  end
  
  grid = Grid.new(2,2)
  puts(grid.print_cells)