class Project < ActiveRecord::Base
  has_many :boots
  attr_accessible :avatar, :name, :url, :description, :boots_attributes
  
  has_attached_file :avatar, :styles => {:large => "700x390>", :medium => "450x252>"}, 
  									:default_url => "/images/:style/missing.png"

  accepts_nested_attributes_for :boots, allow_destroy: true
end