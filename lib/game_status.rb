# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

top_row_win = [0,1,2]
middle_row_win = [3,4,5]
bottom_row_win = [6,7,8]
first_column_win = [0,3,6]
second_column_win = [1,4,7]
third_column_win = [2,5,8]
left_diagnol_win = [0,4,8]
right_diagnol_win = [2,4,6]

def WIN_COMBINATIONS
  puts top_row_win
  puts middle_row_win
  puts bottom_row_win
  puts first_column_win
  puts second_column_win
  puts third_column_win
  puts left_diagnol_win
  puts right_diagnol_win
end
