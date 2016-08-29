class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 30 },
                   format: { with: /[a-zA-Z\d-]+/ }
end
