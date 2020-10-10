

def display_board(board)
  puts " #{board[0]} ""| #{board[1]} |"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""| #{board[4]} |"" #{board[5]} " 
  puts "-----------"
  puts " #{board[6]} ""| #{board[7]} |"" #{board[8]} "
end

def input_to_index(index)
  index = "#{index}".to_i - 1 
end

 
def move(board, index, value = "X")
   board[index] = value
end

def position_taken?(board, index)
  return board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
   if !index.between?(0, 8)
   return false
  end
  
  if board[index] == " " || board[index] == "" || board[index] == nil
    return true
  end
  
  return !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
end