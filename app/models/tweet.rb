class Tweet < ActiveRecord::Base
  attr_accessible :message, :photo
  has_attached_file :photo,
  :styles => {:thumb => {:geometry => '75x75>', :format => :jpg},
  :original => {:geometry => '180x180>', :format => :jpg}},
  :url => "/system/:attachment/:id/:style/:basename.:extension",  
  :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension",  
  :default_url => '/images/missing_:style.jpg'
end
