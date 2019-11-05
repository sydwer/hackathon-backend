class User < ApplicationRecord
    has_many :searches
    has_many :numbers, through: :searches
end
