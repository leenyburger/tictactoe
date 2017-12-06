class GameplayController < ApplicationController

  def play
  	@gameplay = Gameplay.new(board: board_params)
  	if @gameplay.valid_board?
  		@gameplay.play
  		render json: { response: @gameplay.board }, status: :ok
  	end
  	if !@gameplay.valid_board?
  		render json: { error: "Bad Board" }, status: :bad_request
  	end
  end

  private
  	def board_params
  		params[:board].downcase
  	end
end
