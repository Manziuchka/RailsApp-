class User < ApplicationRecord
  #mount_uploader :avatar, AvatarUploader


  has_secure_password

  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :phone, presence: true, uniqueness: true
  validates :phone, phone: { possible: true }
end
