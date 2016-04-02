class PostDetailSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :comment
  def comment
    object.comments
  end
end
