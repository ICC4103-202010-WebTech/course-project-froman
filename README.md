# README

* Ruby version: ruby 2.6.5p114

* Configuration: 

Run "yarn install --check-files"

The app comes with the migrations files already migrated, if you want to check this run 
"rails db:rollback" and then "rails db:migrate".

The "seeds.rb" file HAS NOT been executed. Before anything run "db:setup" to see that it works.


INTEGER ATTRIBUTES MEANING

users.role: 0 stands for a normal member, and 1 for an administrator.

organization_roles.role: 0 stands for a normal member, and 1 for an  organization administrator.

events.privacy: 0 stands for public, and 1 for private.



MODEL LAYER FUNCTIONALITY AND BEHAVIOR

1-10. All queries are in the "model_queries.rake" file. I hope they do what you asked in order to ease
the evaluation process. To run all 10 queries at once, execute the "rake db:queries_demo" command.

13. The dependency is already implemented to make a "cascade" effect by the "dependent: :destroy" 
command. If an event is "destroyed", its guest list, which is represented as  "invitations", will be 
destroyed as well, alongside every vote and comment posted by any user invited to the event.

14. As explained in the previous segment, this time if an organization is "destroyed", all its event
will be destroyed as well, alongside all its components.

15. The model that connects Users with Organizations is the "Organization_role" model, which shows
the role that the user has in an organization; 0 being a normal member and 1 being the administrator
or organization creator. In this case, if an User who is a admin in an organization is "destroyed",
his/hers organization won't be deleted. There is a reason to this, an organization admin should first
manually delete an organization or give his admin rights to another organization member. This is 
because being an org admin has a big responsability, it would not be wise that if a user deletes his 
account, automatically his organizations with its communities should be destroyed as well.


~Felipe Román~

