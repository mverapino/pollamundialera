class ChangeMatchVisitLocal < ActiveRecord::Migration
  def change
    rename_column :matches,:local,:local_id
    rename_column :matches,:visit,:visit_id

  end
end
