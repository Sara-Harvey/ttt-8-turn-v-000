def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input) 
  user_input.to_i - 1
end

def move(board, index, value="X")
  board[index]=value
  end
  
  def position_taken?(board, index)
if board[index] == "X" or board[index] == "O"
return true
else board[index] == " " or board[index] == "" or board[index] == nil
return false
end
end

def valid_move?(board, index)
  if index.between?(0, 8) && (position_taken?(board, index) == false)
    return true
  else 
    return nil
end
end

def turn(board, index, value="X")
  puts "Please enter 1-9:"
  if valid_move?(board, index) == true
	  puts move(board, index, value="X") &&
	  display_board(board)
  else
   if valid_move?(board, index) == false
    puts turn
      end
end
end