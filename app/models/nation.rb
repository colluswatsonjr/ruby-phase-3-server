class Nation < ActiveRecord::Base
    has_many :characters
    has_many :roles, through: :characters
end