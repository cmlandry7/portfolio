class Image < ActiveRecord::Base
  belongs_to :project
  
  has_attached_file :photo, 
    :styles => { :small => "150x150>" },
    :storage => :s3,
    :bucket => 'cml-portfolio',
    :s3_credentials => {
      :access_key_id => 'AKIAJHG7I3JMPXFW6F2A',
      :secret_access_key => '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'
    }
end
