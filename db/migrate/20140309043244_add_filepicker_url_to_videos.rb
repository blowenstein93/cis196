class AddFilepickerUrlToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :filepicker_url, :string
  end
end
