class Image
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip


  has_mongoid_attached_file :image, :styles => { :default => '247x173'},
                            :path => ":rails_root/app/assets/images/:id/album_cover.:extension",
                            :url =>  ":rails_root/app/assets/images/:id/album_cover.:extension"

      validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
