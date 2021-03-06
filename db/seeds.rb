# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Gianluca", lastName: "Linzmayer", username: "Gianluc", email: "glinz139@gmail.com", biography: "I love sandwiches", location: "Place 1", password: "g123123", lastAccess: "2020-06-15 02:20:22 UTC")
user2 = User.create(name: "Benjamin", lastName: "Illesca", username: "NegroSC", email: "bille1543@gmail.com", biography: "I love ducks", location: "Place 2", password: "n123123", lastAccess: "2020-04-15 02:20:22 UTC")
user3 = User.create(name: "Johann", lastName: "Bittner", username: "FedzWoolkie", email: "jbitt639@gmail.com", biography: "I love music", location: "Place 3", password: "j123123", lastAccess: "2020-06-04 02:20:22 UTC")
user4 = User.create(name: "Sebastian", lastName: "Rojas", username: "SARB", email: "sarb542@gmail.com", biography: "I love idols", location: "Place 4", password: "lovelive", lastAccess: "2020-06-12 02:20:22 UTC")
user5 = User.create(name: "Vicente", lastName: "Machuca", username: "Walkure", email: "walkure234@gmail.com", biography: "I love cats", location: "Place 5", password: "v123123", lastAccess: "2020-06-21 02:20:22 UTC")
user6 = User.create(name: "Cesar", lastName: "Macnamara", username: "Poo123", email: "poo4455@gmail.com", biography: "I love one piece", location: "Place 6", password: "juanpiz", lastAccess: "2020-06-13 02:20:22 UTC")
user7 = User.create(name: "Raimundo", lastName: "Orellana", username: "Gandalf", email: "rorell34@gmail.com", biography: "I love beer", location: "Place 7", password: "r123123", lastAccess: "2020-06-05 02:20:22 UTC")
user8 = User.create(name: "Andre", lastName: "Beaujanot", username: "Ondree", email: "ondre1313@gmail.com", biography: "I love cars", location: "Place 8", password: "a123123", lastAccess: "2020-06-17 02:20:22 UTC")
user9 = User.create(name: "Tomas", lastName: "Correa", username: "McWeta", email: "tomate234@gmail.com", biography: "I love tomatoes", location: "Place 9", password: "t123123", lastAccess: "2020-06-02 02:20:22 UTC")
user10 = User.create(name: "Alonso", lastName: "Gomez", username: "AlonsinhOp", email: "alons234@gmail.com", biography: "I love trips", location: "Place 10", password: "show123", lastAccess: "2020-05-15 02:20:22 UTC")
###USERS###

###ORGS###
org1 = Organization.create(name: "Team Rocket", description: "To save the world from devastation!")
org2 = Organization.create(name: "Straw Hats", description: "Let's find the One Piece!")
###ORGS###

###ORG ROLES###
orgRole1 = OrganizationRole.new(organization: org1, user: user1, role: 0)
orgRole1.save!

orgRole2 = OrganizationRole.new(organization: org1, user: user2, role: 0)
orgRole2.save!

orgRole3 = OrganizationRole.new(organization: org1, user: user3, role: 0)
orgRole3.save!

orgRole4 = OrganizationRole.new(organization: org1, user: user4, role: 0)
orgRole4.save!

orgRole5 = OrganizationRole.new(organization: org1, user: user5, role: 1)
orgRole5.save!

orgRole6 = OrganizationRole.new(organization: org2, user: user6, role: 1)
orgRole6.save!

orgRole7 = OrganizationRole.new(organization: org2, user: user7, role: 0)
orgRole7.save!

orgRole8 = OrganizationRole.new(organization: org2, user: user8, role: 0)
orgRole8.save!

orgRole9 = OrganizationRole.new(organization: org2, user: user9, role: 0)
orgRole9.save!

orgRole10 = OrganizationRole.new(organization: org2, user: user10, role: 0)
orgRole10.save!
###ORG ROLES###

###EVENTS###
event1 = Event.new(creator: org1, name: "Pikachu Raid",
                   description: "Capture pikachu", date: "2020-08-15 00:00:00 UTC", privacy: 0, location: "Place A",
                   creation_date: "2020-06-15 00:00:00 UTC")
event1.save!

event2 = Event.new(creator: org2, name: "Grand Line Adventure",
                   description: "Get the One Piece", date: "2020-10-05 00:00:00 UTC", privacy: 0, location: "Place B",
                   creation_date: "2020-05-15 00:00:00 UTC")
event2.save!

event3 = Event.new(creator: user3, name: "Dungeons and Dragons",
                   description: "First sesion", date: "2020-08-05 00:00:00 UTC", privacy: 1, location: "Place C",
                   creation_date: "2020-06-23 00:00:00 UTC")
event3.save!

event4 = Event.new(creator: org2, name: "Sniper Training",
                   description: "To become like the great sogeking", date: "2020-11-07 00:00:00 UTC", privacy: 1, location: "Place D",
                   creation_date: "2020-04-15 00:00:00 UTC")
event4.save!
###EVENTS###

###INVITATIONS###
invit1 = Invitation.new(event: event1, user: user1, host: 0)
invit1.save!

invit2 = Invitation.new(event: event1, user: user2, host: 0)
invit2.save!

invit3 = Invitation.new(event: event1, user: user3, host: 0)
invit3.save!

invit4 = Invitation.new(event: event1, user: user4, host: 0)
invit4.save!

invit5 = Invitation.new(event: event1, user: user5, host: 1)
invit5.save!

invit6 = Invitation.new(event: event2, user: user6, host: 1)
invit6.save!

invit7 = Invitation.new(event: event2, user: user7, host: 0)
invit7.save!

invit8 = Invitation.new(event: event2, user: user8, host: 0)
invit8.save!

invit9 = Invitation.new(event: event2, user: user9, host: 0)
invit9.save!

invit10 = Invitation.new(event: event2, user: user10, host: 0)
invit10.save!

invit11 = Invitation.new(event: event3, user: user3, host: 1)
invit11.save!

invit12 = Invitation.new(event: event3, user: user2, host: 0)
invit12.save!

invit13 = Invitation.new(event: event3, user: user5, host: 0)
invit13.save!

invit14 = Invitation.new(event: event4, user: user10, host: 0)
invit14.save!

invit15 = Invitation.new(event: event4, user: user6, host: 1)
invit15.save!
###INVITATIONS###

###COMMENTS###
comment1 = Comment.new(event: event1, invitation: invit2, content: "Not this again...")
comment1.save!

comment2 = Comment.new(event: event1, invitation: invit3, content: "I'll bring my charizard!")
comment2.save!

comment3 = Comment.new(event: event2, invitation: invit8, content: "I'll become the king of pirates!")
comment3.save!

comment4 = Comment.new(event: event2, invitation: invit9, content: "Gommu Gommu noo Gatling!!!")
comment4.save!

comment5 = Comment.new(event: event3, invitation: invit12, content: "Shotgun mage!")
comment5.save!

comment6 = Comment.new(event: event4, invitation: invit15, content: "He comes from the sniper's island~ (8)")
comment6.save!
###COMMENTS###

###VOTES###
vote1 = Vote.new(event: event1, invitation: invit4, options: "(1) 2020-08-15 00:00:00 | (2) 2020-08-17 00:00:00", vote: 2)
vote1.save!

vote2 = Vote.new(event: event1, invitation: invit2, options: "(1) 2020-08-15 00:00:00 | (2) 2020-08-17 00:00:00", vote: 2)
vote2.save!

vote3 = Vote.new(event: event2, invitation: invit9, options: "(1) 2020-10-05 00:00:00 | (2) 2020-10-10 00:00:00", vote: 1)
vote3.save!

vote4 = Vote.new(event: event2, invitation: invit6, options: "(1) 2020-10-05 00:00:00 | (2) 2020-10-10 00:00:00", vote: 1)
vote4.save!

vote5 = Vote.new(event: event3, invitation: invit13, options: "(1) 2020-08-05 00:00:00 | (2) 2020-08-12 00:00:00", vote: 1)
vote5.save!

vote6 = Vote.new(event: event4, invitation: invit14, options: "(1) 2020-11-07 00:00:00 | (2) 2020-11-20 00:00:00", vote: 2)
vote6.save!
###VOTES###

###MESSAGES###
message1 = Message.new(user: user1, receptor: 9, content: "Hi!", date: "2020-05-15 02:20:22 UTC")
message1.save!

message2 = Message.new(user: user2, receptor: 8, content: "Its over Ondree! I have the high ground.", date: "2020-06-15 02:20:22 UTC")
message2.save!

message3 = Message.new(user: user3, receptor: 7, content: "Its raining.", date: "2020-05-12 02:20:22 UTC")
message3.save!

message4 = Message.new(user: user4, receptor: 5, content: "Kan kan! MIKAN", date: "2020-05-24 02:20:22 UTC")
message4.save!

message5 = Message.new(user: user5, receptor: 6, content: ":3", date: "2020-03-15 02:20:22 UTC")
message5.save!

message6 = Message.new(user: user6, receptor: 4, content: "Potatoe", date: "2020-02-12 02:20:22 UTC")
message6.save!

message7 = Message.new(user: user7, receptor: 3, content: "Tomatoe", date: "2020-03-05 02:20:22 UTC")
message7.save!

message8 = Message.new(user: user8, receptor: 2, content: "Hello there!", date: "2020-05-11 02:20:22 UTC")
message8.save!

message9 = Message.new(user: user9, receptor: 10, content: "Yay!", date: "2020-04-20 02:20:22 UTC")
message9.save!

message10 = Message.new(user: user10, receptor: 1, content: "You underestimate my power!", date: "2020-05-15 02:27:22 UTC")
message10.save!
###MESSAGES###