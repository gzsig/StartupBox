class Startup < ApplicationRecord
  include PgSearch
  pg_search_scope :global_search, against: {
    name: 'A',
    pitch: 'B',
    about: 'C'
  },
  associated_against: {
    people: [ :name ],
    investors: [ :name, :last_name ]
  },
  using: {
    tsearch: { prefix: true, dictionary: "portuguese" }
  }

  has_many :owners
  has_many :people, through: :owners
  has_many :investments
  has_many :investors, through: :investments
end
