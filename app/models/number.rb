class Number < ApplicationRecord
    has_many :searches
    has_many :users, through: :searches
end
