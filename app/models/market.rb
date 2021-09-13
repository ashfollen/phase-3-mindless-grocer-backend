class Market < ActiveRecord::Base
    has_many :groceries
    has_many :recipes, through: :groceries
end 