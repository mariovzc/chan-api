class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_ip, :created, :posts
  def created
    object.created_at.to_formatted_s(:db)
  end
  def posts
    p = Comment.where(post_id: object.id)
    p.count
  end
end
