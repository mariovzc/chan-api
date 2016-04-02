class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_ip, :created, :posts
  def created
    object.created_at.to_formatted_s(:db)
  end
  def posts
    object.comments.count
  end
end
