class Recipe < ActiveRecord::Base
    has_many :groceries
    has_many :markets, through: :groceries
end 