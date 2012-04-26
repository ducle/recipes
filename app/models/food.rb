class Food < ActiveRecord::Base
  has_attached_file :image
  has_attached_file :site_source
end
