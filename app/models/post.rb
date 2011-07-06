class Post < ActiveRecord::Base    
  validates :name, :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
                    
  has_many :comments, :dependent => :destroy
  mount_uploader :image, ImageUploader 
end
