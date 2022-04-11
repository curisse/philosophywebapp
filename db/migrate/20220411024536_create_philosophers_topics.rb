class CreatePhilosophersTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :philosophers_topics, :id => false do |t|
      t.integer :philosopher_id
      t.integer :topic_id
    end
  end
end
