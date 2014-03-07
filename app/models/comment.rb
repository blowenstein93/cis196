class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :video

  validates :comment, length: {within: 50 ... 500 }
end
