class PostController < ApplicationController
  before_action :set_board, only: [:all, :create]
  def all
    post = Post.where(board_id: @board.id)
    render json: post , status: 200
  end
  def create
    post = Post.new(create_params)
    post.board_id = @board.id
    if post.save
      render json: post, status: 200
    else
      render json: "error".to_json, status: 403
    end
  end

  private
  def set_board
    @board = Board.where(name: params[:name])[0]
  end
  def create_params
    params.require(:post).permit(:title, :user_ip)
  end
end
