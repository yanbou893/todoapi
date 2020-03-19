class MemoSerializer < ActiveModel::Serializer
  attributes :id,:task_id,:comment,:todate
  belongs_to :task
end
