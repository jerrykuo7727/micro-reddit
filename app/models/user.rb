class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 50 },
                    format: { with: /[a-zA-Z\d-]+/ },
                    uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
