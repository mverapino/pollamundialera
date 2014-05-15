class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.boolean :paid, default:false
      t.timestamps
    end
  end
end
