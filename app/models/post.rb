class Post < ActiveRecord::Base    
  validates :name, :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
                    
  has_many :comments, :dependent => :destroy
  
  has_attached_file :photo, :styles => { :small => "150x150>" }
end
