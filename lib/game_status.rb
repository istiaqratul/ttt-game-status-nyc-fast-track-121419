# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

# top_row_win = [0,1,2]
# middle_row_win = [3,4,5]
# bottom_row_win = [6,7,8]
# first_column_win = [0,3,6]
# second_column_win = [1,4,7]
# third_column_win = [2,5,8]
# left_diagnol_win = [0,4,8]
# right_diagnol_win = [2,4,6]

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won? (board_array)

  WIN_COMBINATIONS.each do |winning_combo|
    top_row_win = wining_combo [0]
    middle_row_win = winning_combo [1]
    bottom_row_win = winning_combo [2]
    first_column_win = winning_combo [3]
    second_column_win = winning_combo [4]
    third_column_win = winning_combo [5]
    left_diagnol_win = winning_combo [6]
    right_diagnol_win = winning_combo [7]

    symbol_first_array = board_array [top_row_win]
    symbol_second_array = board_array [middle_row_win]
    symbol_third_array = board_array [bottom_row_win]

    if symbol_first_array = symbol_second_array && symbol_first_array = symbol_third_array != ""
      return winning_combo
    end
  end

  return false

end


puts won?([" ","","","","","","",])