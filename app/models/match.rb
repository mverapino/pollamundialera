class Match < ActiveRecord::Base
  belongs_to :visit,   class_name: 'Team', foreign_key: :visit
  belongs_to :local,   class_name: 'Team', foreign_key: :local
end
