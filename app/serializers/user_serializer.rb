class UserSerializer < ActiveModel::Serializer
  attributes :id,:uid,:name,:email
  has_many :tasks 
end
