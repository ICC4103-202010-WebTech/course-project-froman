# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Gianluca", lastName: "Linzmayer", username: "Gianluc", email: "glinz139@gmail.com", biography: "I love sandwiches", mainRole: 0)
user2 = User.create(name: "Benjamin", lastName: "Illesca", username: "NegroSC", email: "bille1543@gmail.com", biography: "I love ducks", mainRole: 0)
user3 = User.create(name: "Johann", lastName: "Bittner", username: "FedzWolkie", email: "jbitt639@gmail.com", biography: "I love music", mainRole: 0)
user4 = User.create(name: "Sebastian", lastName: "Rojas", username: "SARB", email: "sarb542@gmail.com", biography: "I love idols", mainRole: 1)
user5 = User.create(name: "Vicente", lastName: "Machuca", username: "Walkure", email: "walkure234@gmail.com", biography: "I love cats", mainRole: 0)
user6 = User.create(name: "Cesar", lastName: "Macnamara", username: "Poo123", email: "poo4455@gmail.com", biography: "I love one piece", mainRole: 0)
user7 = User.create(name: "Raimundo", lastName: "Orellana", username: "Gandalf", email: "rorell34@gmail.com", biography: "I love beer", mainRole: 0)
user8 = User.create(name: "Andre", lastName: "Beaujanot", username: "Ondree", email: "ondre1313@gmail.com", biography: "I love cars", mainRole: 0)
user9 = User.create(name: "Tomas", lastName: "Correa", username: "McWeta", email: "tomate234@gmail.com", biography: "I love tomatoes", mainRole: 0)
user10 = User.create(name: "Alonso", lastName: "Gomez", username: "AlonsinhOp", email: "alons234@gmail.com", biography: "I love trips", mainRole: 1)
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
                   description: "Capture pikachu", date: DateTime.now, privacy: 0)
event1.save!

event2 = Event.new(creator: org2, name: "Grand Line Adventure",
                   description: "Get the One Piece", date: DateTime.now, privacy: 0)
event2.save!

event3 = Event.new(creator: user3, name: "Dungeons and Dragons",
                   description: "First sesion", date: DateTime.now, privacy: 1)
event3.save!

event4 = Event.new(creator: org2, name: "Sniper Training",
                   description: "To become like the great sogeking", date: DateTime.now, privacy: 1)
event4.save!
###EVENTS###

###INVITATIONS###
invit1 = Invitation.new(event: event1, user: user1)
invit1.save!

invit2 = Invitation.new(event: event1, user: user2)
invit2.save!

invit3 = Invitation.new(event: event1, user: user3)
invit3.save!

invit4 = Invitation.new(event: event1, user: user4)
invit4.save!

invit5 = Invitation.new(event: event1, user: user5)
invit5.save!

invit6 = Invitation.new(event: event2, user: user6)
invit6.save!

invit7 = Invitation.new(event: event2, user: user7)
invit7.save!

invit8 = Invitation.new(event: event2, user: user8)
invit8.save!

invit9 = Invitation.new(event: event2, user: user9)
invit9.save!

invit10 = Invitation.new(event: event2, user: user10)
invit10.save!

invit11 = Invitation.new(event: event3, user: user3)
invit11.save!

invit12 = Invitation.new(event: event3, user: user2)
invit12.save!

invit13 = Invitation.new(event: event3, user: user5)
invit13.save!

invit14 = Invitation.new(event: event4, user: user10)
invit14.save!

invit15 = Invitation.new(event: event4, user: user6)
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
vote1 = Vote.new(event: event1, invitation: invit4, options: "(1) Next monday | (2) Next Friday", vote: 2)
vote1.save!

vote2 = Vote.new(event: event1, invitation: invit2, options: "(1) Next monday | (2) Next Friday", vote: 2)
vote2.save!

vote3 = Vote.new(event: event2, invitation: invit9, options: "(1) Tomorrow | (2) Next Tuesday", vote: 1)
vote3.save!

vote4 = Vote.new(event: event2, invitation: invit6, options: "(1) Tomorrow | (2) Next Tuesday", vote: 1)
vote4.save!

vote5 = Vote.new(event: event3, invitation: invit13, options: "(1) Next Sunday | (2) Next Saturday", vote: 1)
vote5.save!

vote6 = Vote.new(event: event4, invitation: invit14, options: "(1) Tomorrow | (2) Next Sunday", vote: 2)
vote6.save!
###VOTES###