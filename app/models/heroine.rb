class Heroine < ApplicationRecord
has_and_belongs_to_many :powers through 

validates :name, :presence => true :message => "please input a heroine name"
validates :super_name, :presence => true  :message => "please input a heroine super name"
#could have used the default rails error message "can't  be blank"

validate :check_previous_heroine_names

def check_previous_heroine_names
    #need a function to match names here. Could not write it out.
    end
  end

end
