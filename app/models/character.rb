class Character < ActiveRecord::Base
    belongs_to :nation
    belongs_to :role
end