class Material < ApplicationRecord
    belongs_to :philosopher, :optional => true
    belongs_to :topic, :optional => true

    # TOPIC_LIST = ["Existentialism", "Language and Meaning", "Power and Knowledge", "Feminism", "Post-Colonial Theory", "Ethics", "Work and Value", "Virtue and Capitalism", "Consciousness", "Responsibility", "Emotion"]
end
