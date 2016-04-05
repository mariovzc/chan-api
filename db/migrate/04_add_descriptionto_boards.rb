class AddDescriptiontoBoards < ActiveRecord::Migration
  def change
    add_column :boards, :description, :string
  end
end
