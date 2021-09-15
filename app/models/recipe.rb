class Recipe < ActiveRecord::Base
    has_many :ingredients
    has_many :markets, through: :ingredients
end 