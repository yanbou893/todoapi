class BodySerializer < ActiveModel::Serializer
  attributes :id,:task_id,:title,:parcent,:memo
  belongs_to :task
end
