class Gameplay
  include ActiveModel::Model

  attr_accessor :board

	def valid_board?
		valid_length? && valid_chars? && valid_difference? && !board_full? && !winner?
	end

	private

	def valid_length?
		return true if board.length == 9
	end

	def valid_chars?
		return true if ((num_x + num_o + board.count(" ")) == 9)
	end

	def valid_difference?
		return true if ((num_x == num_o) || ((num_x + 1) == num_o) || ((num_o + 1) == num_x))
	end

	def board_full?
		return true if (num_x + num_o == 9)
	end

	def winner?
		return true if (board[0] == "x" && board[1] == "x" && board[2] == "x")
		return true if (board[3] == "x" && board[4] == "x" && board[5] == "x")
		return true if (board[6] == "x" && board[7] == "x" && board[8] == "x")
		return true if (board[0] == "x" && board[3] == "x" && board[6] == "x")
		return true if (board[1] == "x" && board[4] == "x" && board[7] == "x")
		return true if (board[2] == "x" && board[5] == "x" && board[8] == "x")
		return true if (board[0] == "x" && board[4] == "x" && board[8] == "x")
		return true if (board[2] == "x" && board[4] == "x" && board[6] == "x")
		return true if (board[0] == "o" && board[1] == "o" && board[2] == "o")
		return true if (board[3] == "o" && board[4] == "o" && board[5] == "o")
		return true if (board[6] == "o" && board[7] == "o" && board[8] == "o")
		return true if (board[0] == "o" && board[3] == "o" && board[6] == "o")
		return true if (board[1] == "o" && board[4] == "o" && board[7] == "o")
		return true if (board[2] == "o" && board[5] == "o" && board[8] == "o")
		return true if (board[0] == "o" && board[4] == "o" && board[8] == "o")
		return true if (board[2] == "o" && board[4] == "o" && board[6] == "o")
	end

	def num_x
		board.count("x")
	end

	def num_o
		board.count("o")
	end
end
