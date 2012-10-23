class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_secure_password

  validates_uniqueness_of :email

  has_many :activity_users
  has_many :activities, :through => :activity_users
end
