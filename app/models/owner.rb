class Owner < ApplicationRecord
  belongs_to :startup
  belongs_to :person
end
