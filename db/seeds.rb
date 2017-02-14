# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# -> id: 1

# making_friends = Purpose.create({name: 'Making Friends'})
# -> id: 1

# purpose_profile = PurposeProfile.create({ purpose_id: 1, profile_id: 1})

# music = Interest.create({ name: 'music'})
# # -> id: 1
# coding = Interest.create({ name: 'coding'})
# # -> id: 2

matt = User.create({email: 'mjfender@gmail.com', password: '1234'})

matts_profile = Profile.create({ name: 'Matt Fender', bio: 'Punny guy living in Hamilton Heights', phone: '555-555-5555', interests: 'Web Development, Non-Profit Fundraising', purpose: 'Networking, Making Friends' })

a_line = Line.create({ name: 'A' })
origin_station = Station.create({ name: '145th St', mta_id: 295})
destination_station = Station.create({ name: 'Fulton St', mta_id: 360})

a_line.stations << origin_station
a_line.stations << destination_station

matts_commute = Commute.create({ time: '09:30', line: a_line.id, origin_id: origin_station.id, destination_id: destination_station.id, user_id: matt.id})
matts_commute_back = Commute.create({ time: '06:30', line: a_line.id, destination_id: origin_station.id, origin_id: destination_station.id, user_id: matt.id})



matt.profile = matts_profile
