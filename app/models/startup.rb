class Startup < ApplicationRecord
  has_many :owners
  has_many :people, through: :owners
end
