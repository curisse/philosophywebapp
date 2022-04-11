class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.text :title
      t.text :region
      t.text :image
      t.integer :philosopher_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
