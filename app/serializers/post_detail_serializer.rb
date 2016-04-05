class PostDetailSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :comment
  def comment
    arr = []
    hash = {}
    object.comments.each do |comment|
    end
  end
end
