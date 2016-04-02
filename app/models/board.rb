class Board < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  #Validation
  validates :name, presence: true
  validates :description, presence: true

end
