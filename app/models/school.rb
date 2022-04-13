class School < ApplicationRecord
    has_and_belongs_to_many :philosophers
    has_many :topics
end
