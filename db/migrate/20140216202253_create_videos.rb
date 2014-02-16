class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :file
      t.belongs_to :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
