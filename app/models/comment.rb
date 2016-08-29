class Comment < ApplicationRecord
  validates :text, presence: true, length: { maximum: 1000 }
end
