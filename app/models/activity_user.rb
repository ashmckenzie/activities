class ActivityUser < ActiveRecord::Base
  attr_accessible :activity_id, :user_id, :occurred_at

  belongs_to :activity
  belongs_to :user

  def description
    "#{activity.past_tense_name} @ #{occurred_at.strftime('%a %d %b %y %H:%M %p')}"
  end
end
