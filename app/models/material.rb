class Material < ApplicationRecord
    belongs_to :philosopher, :optional => true
    belongs_to :topic, :optional => true
end
