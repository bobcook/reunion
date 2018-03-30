class Phone < ApplicationRecord
  belongs_to :classmate
  validates_presence_of :number
end
