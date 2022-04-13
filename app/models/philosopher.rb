class Philosopher < ApplicationRecord
    has_and_belongs_to_many :schools
    has_and_belongs_to_many :topics
    has_many :materials
end
