class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id
  belongs_to  :user 
  has_many :bodies 
  has_many :memos 
end
