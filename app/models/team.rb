class Team < ActiveRecord::Base
  has_many :local_matches, :foreign_key => 'local_id', :class_name => 'Match'
  has_many :visit_matches, :foreign_key => 'visit_id', :class_name => 'Match'

  def matches
    local_matches + visit_matches
  end
end
