class Relational < ActiveRecord::Base
  belongs_to :rental

  validates :u_id, :presence => true, :confirmation => true
  validates :r_id, :presence => true, :confirmation => true

end
