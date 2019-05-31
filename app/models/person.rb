class Person < ApplicationRecord
  has_many :owners
  has_many :startups, through: :owners
end
