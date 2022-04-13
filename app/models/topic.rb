class Topic < ApplicationRecord
    has_and_belongs_to_many :philosophers
    has_many :materials
    belongs_to :school, :optional => true
end
