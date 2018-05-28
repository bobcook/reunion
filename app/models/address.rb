class Address < ApplicationRecord
  belongs_to :classmate
  validates_presence_of :city
  validates :street1, uniqueness: true
end
