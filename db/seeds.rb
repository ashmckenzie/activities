user = User.create(name: 'Ash McKenzie', email: 'ash@greenworm.com.au', password: 'testing')

activities = [
  Activity.create(name: 'Walk Maurice'),
  Activity.create(name: 'Ride bike')
]

user.activities << activities
