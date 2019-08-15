class Employee < ApplicationRecord
    belongs_to :dog
    validates :alias, :title, presence:true
    
end
