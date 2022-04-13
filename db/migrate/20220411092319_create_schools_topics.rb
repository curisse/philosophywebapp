class CreateSchoolsTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :schools_topics, :id => false do |t|
      t.integer :school_id
      t.integer :topic_id
    end
  end
end
