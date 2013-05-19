class Boot < ActiveRecord::Base
  belongs_to :project
  attr_accessible :first_name, :last_name, :cohort, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  									:default_url => "/images/:style/missing.png"

end
