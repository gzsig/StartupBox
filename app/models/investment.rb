class Investment < ApplicationRecord
  belongs_to :startup
  belongs_to :investor
end
