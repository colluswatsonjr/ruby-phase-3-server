class Role < ActiveRecord::Base
    has_many :characters
end