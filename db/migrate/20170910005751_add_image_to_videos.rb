class AddImageToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :image, :string, after: :user_id
  end
end
