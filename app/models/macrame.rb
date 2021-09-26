class Macrame < ApplicationRecord
  belongs_to :category
  monetize :price_cents
end
