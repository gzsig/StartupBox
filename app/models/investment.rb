class Investment < ApplicationRecord
  belongs_to :startup
  belongs_to :person
end
