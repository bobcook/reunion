class Comment < ApplicationRecord
  belongs_to :classmate
  validates :comment, uniqueness: true
end
