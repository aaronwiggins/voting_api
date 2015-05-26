class CreateCanidates < ActiveRecord::Migration
  def change
    create_table :canidates do |t|
      t.string :name
      t.string :hometown
      t.string :district
      t.string :party

      t.timestamps null: false
    end
  end
end
