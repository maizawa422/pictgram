class Comment < ApplicationRecord
  belongs_to :topics
  belongs_to :users
  validates :content, presence: true
end
