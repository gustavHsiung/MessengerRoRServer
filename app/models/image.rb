class Image < ActiveRecord::Base
  has_attached_file :photo,
    :styles =>{
      :thumb  => "100x100",
      :medium => "200x200",
      :large => "600x400"
    },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :url => ':s3_escaped_path_url',
    :path => "pictures/person/:id/:style_:filename",
    :bucket => 'TiToTwBucket'
end
