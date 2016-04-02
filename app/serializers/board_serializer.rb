class BoardSerializer < ActiveModel::Serializer
  attributes :name, :description, :post
  def post
     p = object.posts.count
  end
end
