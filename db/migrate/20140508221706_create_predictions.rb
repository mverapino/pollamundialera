class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.string :question
      t.string :answer
      t.integer :question_type
      t.string :group
      t.integer :points
      t.timestamps
    end
  end
end
