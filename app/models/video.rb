class Video < ActiveRecord::Base
  mount_uploader :file, VideoUploader

  belongs_to :user
  has_many :categories, through: :video_categories
  has_many :video_categories, dependent: :destroy

  # validates :title, :file, :description, presence: true
end
