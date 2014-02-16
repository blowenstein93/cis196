class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true
      t.text :comment
      t.belongs_to :video, index: true

      t.timestamps
    end
  end
end
