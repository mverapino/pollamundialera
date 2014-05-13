class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.belongs_to :match, index: true
      t.belongs_to :user, index: true
      t.integer :local_score
      t.integer :visit_score

      t.timestamps
    end
  end
end
