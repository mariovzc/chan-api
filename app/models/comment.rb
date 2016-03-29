class Comment < ActiveRecord::Base
  belongs_to :post
  #validations
  validates :body, presence: true
  validates :user_ip, presence: true
end
