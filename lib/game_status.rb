# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
      return combo_array
    end
  end

  return false

end

def full?(board_array)

  board_array.each do |symbol|
    if symbol == " "
      return false
    end
  end

end

def draw?(board_array)
  if full?(board_array) && !won?(board_array)
    return true
