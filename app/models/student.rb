class Student < ApplicationRecord
  has_many :children, class_name: 'Student', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Student', optional: true
  has_many :grandchildren, class_name: 'Student', through: :children, source: :children
end
