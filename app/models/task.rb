class Task < ApplicationRecord
    has_many :bodies
    has_many :memos
    belongs_to :user 
end
