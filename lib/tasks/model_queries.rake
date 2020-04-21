namespace :db do
  task :queries_demo => :environment do

    puts("Query 1:") # Inside "where" you can specify the user
    result1 = User.joins(:events).where(id: 3).pluck('events.name')
    puts(result1)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 2:") # Inside "where" you can specify the organization id
    result2 = User.joins(:organization_roles).where(organization_roles: {organization_id: 2}).
        pluck(:name)
    puts(result2)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 3:") # Inside "where" you can specify the organization
    result3 =  Organization.joins(:events).where(id: 1, events: {privacy: 0}).pluck('events.name')
    puts(result3)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 4:") # Inside "where" you can specify the organization
    result4 =  Organization.joins(:events).where(id: 2, events: {privacy: 1}).pluck('events.name')
    puts(result4)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 5:") # Inside "where" you can specify the event. This query returns the user's id
    result5 =  Event.joins(:invitations).where(id: 1).pluck('user_id')
    puts(result5)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 6:") # Inside "where" you can specify the event. This query returns the user's id who had made a vote
    result6 =  Event.joins(invitations: :vote).where(id: 1).pluck('user_id')
    puts(result6)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 7:") # Inside "where" you can specify the event. This query returns the user's id alongside the comment
    result7 =  Event.joins(invitations: :comments).where(id: 1).pluck('user_id', 'comments.content')
    puts(result7)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 8:") # Inside "where" you can specify the event with the guest's id. It returns the same as the last query
    result8 =  Event.joins(invitations: :comments).where(id: 2, invitations: {user_id: 8}).
        pluck('user_id', 'comments.content')
    puts(result8)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 9:") # Inside "where" you can specify the organization by its id
    result9 =  User.joins(:organization_roles).where(organization_roles: {role: 1, organization_id: 1}).
        pluck(:name)
    puts(result9)
    puts("--EOQ--") # End Of Query
    puts("")

    puts("Query 10:")
    result10 =  User.where(mainRole: 1).pluck(:name)
    puts(result10)
    puts("--EOQ--") # End Of Query
    puts("")

  end
end