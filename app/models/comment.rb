class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :video

  validates :comment, length: {within: 20 ... 500 }
end
