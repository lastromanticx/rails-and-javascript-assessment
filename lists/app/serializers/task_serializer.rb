class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :format_due_date, :status, :errors
  has_many :tags
end
