class ListSerializer < ActiveModel::Serializer
  include Policy

  attributes :id, :name, :collaborators, :editable
  has_many :tasks, serializer: ListTaskSerializer

  def collaborators
    object.collaborators(true)
  end

  def editable
    authorize_resource(current_user,object,:edit)
  end
end
