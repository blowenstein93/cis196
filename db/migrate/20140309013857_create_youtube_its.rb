class CreateYoutubeIts < ActiveRecord::Migration
  def change
    create_table :youtube_its do |t|
      t.string :video

      t.timestamps
    end
  end
end
