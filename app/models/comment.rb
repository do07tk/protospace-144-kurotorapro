class Comment < ApplicationRecord
  belongs_to :proto
  belongs_to :user

  validates :text, presence: true
  
end
