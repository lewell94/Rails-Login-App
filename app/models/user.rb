# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  firstName  :string(255)
#  lastName   :string(255)
#  email      :string(255)
#  labelName  :string(255)
#  labelScene :string(255)
#  bandOne    :string(255)
#  bandTwo    :string(255)
#  bandThree  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :bandOne, :bandThree, :bandTwo, :email, :firstName, :labelName, :labelScene, :lastName, :password
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :email, presence: true, 
  					format: { with: VALID_EMAIL_REGEX }, 
  					uniqueness: { case_sensitive: false }
  validates :password, presence: true

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
    
end
