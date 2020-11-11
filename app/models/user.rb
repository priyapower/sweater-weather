class User < ApplicationRecord
  before_create :set_api_key
  # before_validation :set_api_key, on: :create
  has_secure_password

  validates :email, uniqueness: true, presence: true
  validates :password, confirmation: true
  validates :api_key, uniqueness: true

  def set_api_key
    self.api_key = generate_api_key
  end

  def generate_api_key
    SecureRandom.base58(24)
  end
end
