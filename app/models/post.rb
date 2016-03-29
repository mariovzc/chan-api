class Post < ActiveRecord::Base
  belongs_to :board
  has_many :comments, dependent: :destroy

  #Validations
  validates :title, presence: true
  validates :user_ip, presence: true
end
