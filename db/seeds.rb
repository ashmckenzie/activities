user = User.create(name: 'Ash McKenzie', email: 'ash@greenworm.com.au', password: 'testing')

walk_maurice = Activity.create(name: 'Walk Maurice')
ride_bike = Activity.create(name: 'Ride bike')

ActivityUser.create(:user_id => user.id, :activity_id => walk_maurice.id, :occurred_at => Time.parse('2012-10-22 19:30:00'))
ActivityUser.create(:user_id => user.id, :activity_id => walk_maurice.id, :occurred_at => Time.parse('2012-10-23 15:05:00'))

ActivityUser.create(:user_id => user.id, :activity_id => ride_bike.id, :occurred_at => Time.parse('2012-10-25 21:00:00'))
