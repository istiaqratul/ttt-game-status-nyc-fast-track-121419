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

  WIN_COMBINATIONS.each do |combo_array|
    first_index_1 = combo_array [0]
    second_index_2 = combo_array [1]
    third_index_3 = combo_array [2]


    symbol_first_array = board_array [first_index_1]
    symbol_second_array = board_array [second_index_2]
    symbol_third_array = board_array [third_index_3]

    if symbol_first_array = symbol_second_array && symbol_first_array = symbol_third_array != ""
      return winning_combo
    end
  end

  return false

end

def full?(board_array)

  board_array.each do |symbol|

