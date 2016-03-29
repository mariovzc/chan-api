class CommentsController < ApplicationController
  before_action :current_board, only: [:list]
  before_action :current_post, only: [:list, :create]

  #  get '/:board/:id', to: 'comment#list'
  def list
    comments = Comment.where(post: @post)
    render json: comments, status: 200
  end
  #  post '/:board/:post', to: 'comments#create'
  def create
    comment = Comment.new(create_params)
    comment.post = @post
    if comment.save
      render json: comment, status: 200
    else
      render json: comment.errors, status: 403
    end

  end
  #get '/:board/:post/:id', to: 'comments#show'
  def show
    comment = Comment.find(params[:id])
    render json: comment, status: 200
  end
  private
  def current_board
    @board = Board.where(name: params[:board])[0]
  end
  def current_post
    @post = Post.find(params[:post])
  end
  def create_params
    params.require(:comment).permit(:body, :user_ip)
  end
end
