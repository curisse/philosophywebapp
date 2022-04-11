class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.text :title
      t.integer :philosopher_id
      t.integer :school_id

      t.timestamps
    end
  end
end
