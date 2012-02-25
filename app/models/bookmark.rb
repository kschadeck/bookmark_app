class Bookmark < ActiveRecord::Base
  has_many :bookmarks
  
  validates :name, :length => { :maximum => 140 }
end
