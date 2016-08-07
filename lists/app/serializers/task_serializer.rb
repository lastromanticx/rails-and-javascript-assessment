class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :errors
  has_many :tags
end
