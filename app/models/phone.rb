class Phone < ApplicationRecord
  belongs_to :classmate
  validates_presence_of :number
  validates :number, uniqueness: true
end
