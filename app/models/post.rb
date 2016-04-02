class Post < ActiveRecord::Base
  belongs_to :board
  has_many :comments, dependent: :destroy

  #Validations
  validates :title, presence: true
  validates_length_of :title, :minimum => 10, :maximum => 60

  validates_length_of :body, :minimum => 10, :maximum => 100, :allow_blank => true
  validates :user_ip, presence: true
end
