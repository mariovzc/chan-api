class PostController < ApplicationController
  before_action :set_board, only: [:all, :create, :detail]
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
      render json: post.errors, status: 403
    end
  end
  def detail
    b = Board.where(name: params[:board])[0]
    post = Post.where(id: params[:post], board_id:b.id )
    render json: post, status: 200, each_serializer: PostDetailSerializer

  end
  private
  def set_board
    @board = Board.where(name: params[:name])[0]
  end
  def create_params
    params.require(:post).permit(:title, :user_ip, :body)
  end
end
