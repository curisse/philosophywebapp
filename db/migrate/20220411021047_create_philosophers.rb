class CreatePhilosophers < ActiveRecord::Migration[5.2]
  def change
    create_table :philosophers do |t|
      t.text :title
      t.text :bio
      t.text :image
      t.integer :school_id
      t.integer :material_id

      t.timestamps
    end
  end
end
