class PostController < ApplicationController
  def all
    board = Board.where(name: params[:name])[0]
    post = Post.where(board_id: board.id)
    render json: post , status: 200
  end
end
