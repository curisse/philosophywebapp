class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.text :title
      t.text :author
      t.text :link
      t.integer :topic_id
      t.integer :philosopher_id

      t.timestamps
    end
  end
end
