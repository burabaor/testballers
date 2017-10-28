class Category < ActiveRecord::Base

  has_many :videos, through: :video_categories
  has_many :video_categories, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }

end
