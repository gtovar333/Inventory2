class Product < ActiveRecord::Base
  attr_accessible :description, :price, :stock, :title
  belongs_to :user
  

  validates :title, :description, :presence => true
  validates :title, :length => { :minimum => 2}
  validates :title, :uniqueness =>  { :message => "Duplicated"}
  validates :price, :numericality => { :only_integer => true }
  validates :stock, :numericality => { :only_integer => true }
  
/    , :class_name => "User",
  :foreign_key => "user_id" 
  

  /
end
