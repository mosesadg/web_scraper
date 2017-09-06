class Apartment < ApplicationRecord
	scope :price_range_3, -> {where("price > 1501 AND price <= 2000")}
	scope :price_range_4, -> {where("price > 2001")}
end
