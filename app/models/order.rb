class Order < ApplicationRecord
  belongs_to :user
  belongs_to :macrame
  monetize :amount_cents
end
