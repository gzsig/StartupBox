class Investor < ApplicationRecord
  has_many :investments
  has_many :startups, through: :investments
end
