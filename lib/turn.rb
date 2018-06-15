def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board,index,char = "X")
  board[index] = char
end

def valid_move?(board,index)
  if position_taken?(board,index)
    false
  elsif index < 0 || index > 8
    false
  #elsif index == nil
  #  false
  else
    true
  end
end

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    true
  else board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board,input) == true
    move(board,input,"X")
  else
    turn(board)
  end
  display_board(board)
end
