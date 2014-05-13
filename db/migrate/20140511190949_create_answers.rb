class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :user, index: true
      t.belongs_to :prediction, index: true
      t.string :answer, null: false

      t.timestamps
    end
  end
end
