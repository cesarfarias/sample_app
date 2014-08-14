class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/gif", "image/jpg", "image/jpeg", "image/png"]
	validates :description, :image, presence: true
end
