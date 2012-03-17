class Image < ActiveRecord::Base
  attr_accessible :title, :message, :photo
  has_attached_file :photo,
    :styles =>{
      :thumb  => "100x100",
      :large => "600x400"
    },
    :storage => :s3,
    :bucket => 'TiToTwBucket',
    :s3_credentials => {:access_key_id=> ENV['AKIAIOSUVUJUTAN5M7JQ'],
                        :secret_access_key =>ENV['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']}, 
    :url => ':s3_escaped_path_url',
    :path => "photo/:style_:filename"
    

end
