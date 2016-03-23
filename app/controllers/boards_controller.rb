class BoardsController < ApplicationController
  def all
    boards = Board.all
  end
end
