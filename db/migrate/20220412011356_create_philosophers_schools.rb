class CreatePhilosophersSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :philosophers_schools do |t|
      t.integer :philosopher_id
      t.integer :school_id
    end
  end
end
