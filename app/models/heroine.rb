class Heroine < ApplicationRecord
    #I really don't know how to do this part
    validates :name, presence: true, acceptance: {message: "must have a name"} 
    validates :super_name, presence: true, uniqueness: true, acceptance: {message: "Must have a unique super name."}
    
    has_many :joins
    has_many :powers, through: :joins

end
