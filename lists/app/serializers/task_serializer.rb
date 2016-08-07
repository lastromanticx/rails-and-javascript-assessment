class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :tags
end
