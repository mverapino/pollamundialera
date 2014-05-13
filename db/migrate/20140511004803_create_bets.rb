class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.belongs_to :match, index: true, null:false
      t.belongs_to :user, index: true, null:false
      t.integer :local_score, null:false
      t.integer :visit_score, null:false

      t.timestamps
    end
  end
end
