require 'pry'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "== #{msg} =="
end

def display_board(brd)
  system 'clear'
  puts "  1     2     3     "
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |   #{brd[3]}"
  puts "-----+-----+-----"
  puts "  4  |  5  |  6     "
  puts "  #{brd[4]}  |  #{brd[5]}  |   #{brd[6]}"
  puts "-----+-----+-----"
  puts "  7  |  8  |  9"
  puts "  #{brd[7]}  |  #{brd[8]}  |   #{brd[9]}"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num]= INITIAL_MARKER}
  new_board
end

def empty_square(brd)
  brd.keys.select {|num| brd[num] == INITIAL_MARKER}
end

def player_turn(brd)
  square = ''
  loop do
    prompt("Choose a square (#{empty_square(brd).join(', ')})")
    square = gets.chomp.to_i
    break if empty_square(brd).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def computer_turn(brd)
  square = empty_square(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_square(brd).empty?
end

def winner_detected?(brd)
  !!dectect_winner(brd)
end

def dectect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]

  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
       return 'You'
    elsif
       brd[line[0]] == COMPUTER_MARKER &&
       brd[line[1]] == COMPUTER_MARKER &&
       brd[line[2]] == COMPUTER_MARKER
       return 'Computer'
       else
      end
  end
    nil
end

loop do
  board = initialize_board

  player_point = 0
  computer_point = 0
  loop do
    display_board(board)
    player_turn(board)
    break if winner_detected?(board) || board_full?(board)
    computer_turn(board)
    break if winner_detected?(board) || board_full?(board)
  end

  display_board(board)
  if winner_detected?(board)
    prompt("#{dectect_winner(board)} won!")
  else
    prompt("It's a tie!")
  end

  prompt("Do you want to play again? (Y/N)")
  answer = gets.chomp.upcase!
  break unless answer.start_with?('Y')
end

puts "Thanks for playing!"
