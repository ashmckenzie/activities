class Activity < ActiveRecord::Base
  attr_accessible :name

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :activity_users
  has_many :users, :through => :activity_users

  def past_tense_name
    name.downcase.verb.conjugate(:tense => :past, :aspect => :perfective).titleize
  end
end
