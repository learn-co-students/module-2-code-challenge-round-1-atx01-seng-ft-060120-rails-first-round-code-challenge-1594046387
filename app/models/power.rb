class Power < ApplicationRecord

    has_many :joins
    has_many :heroines, through: :joins

end
