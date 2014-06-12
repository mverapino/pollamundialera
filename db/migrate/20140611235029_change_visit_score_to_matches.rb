class ChangeVisitScoreToMatches < ActiveRecord::Migration
  def change
    rename_column :matches,:local_visit, :visit_score
  end
end
