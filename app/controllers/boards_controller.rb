class BoardsController < ApplicationController
  def all
    boards = Board.all
    render json: boards, status: 200
  end
end
