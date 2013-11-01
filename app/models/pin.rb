class Pin < ActiveRecord::Base
  attr_accessible :description, :event_title, 
  								:event_date, :event_time, 
  								:event_host, :event_free, 
  								:event_rating, :image

  validates :description, presence: true
	validates :user_id, presence: :ture
  validates_attachment :image, presence: true,
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/gif','image/png']},
  														 size: { less_than: 5.megabytes}
 
  belongs_to :user
  has_attached_file :image, styles: {medium: "320x240>"}
  
end
