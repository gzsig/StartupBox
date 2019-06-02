class Startup < ApplicationRecord
  has_many :owners
  has_many :people, through: :owners
  has_many :investments
  has_many :investors, through: :investments
end
