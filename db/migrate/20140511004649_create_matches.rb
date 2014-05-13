class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :local ,null: false
      t.integer :visit ,null: false
      t.datetime :time
      t.integer :local_score
      t.integer :local_visit
      t.timestamps
    end
  end
end
