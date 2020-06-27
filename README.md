# README

* Ruby version: ruby 2.6.5p114

* Configuration: 

Run "yarn install --check-files"

Run "bundle install"

Run "rails db:setup" to execute migrations and seeds file.

Run "rake admin:create_admin_user" to create an admin and set a custom password

The email for admin log in is "admin@webtech.com"

The emails and passwords for Users are in the seeds file at the beginning, on the "User.create" section.


--IMPLEMENTED FEATURES--

GUEST:

	-As a guest user, you can only access in the homepage to a view of all public events in the database.

	-In the navigation bar, a guest can only access to a view of all users and organization.

	-A guest can't  join an organization, comment or vote on events, or any edit or delete actions.
	
	-A guest can see an user's profile but in the "invitations" and "created events" section can only see
	 the "public" ones.

	 -A guest can either log in as an user or admin, or register as a new user.


USER

	-As an user, you can only access in the homepage to a view of all public events and his/her own private
	 ones in the database.

	-In the navigation bar, unlike a guest, the user can access to his/her "created event", "organization roles",
	 "invitations" and "inbox". Apart from that, the user can access to anything that the guest can.

	-An user can only edit and delete his/her own created events, organizations and roles in organizations.
	 Can only delete his/her invitations. If a user is a moderator of an organization, he/she can manage the
	 members in his/her own organization and can create events as either the organizations or as an user.

	-An user can comment and vote in an event only if he/she is invited. Votes can only be casted once per
	 user. The creator of an event can manage the guest list by either inviting new users or deleting a guest.

	-An user can edit only his/her own profile information and password. "Change password" option is in the
	 profile page.

	-An user can see any other user's profile the same way as a guest. If an user sees his/her own profile, the
	 "invitations" and "created events" section show the "private" ones too, and has the options to either: edit
	 profile information or change the password, as also the option to delete his/her own account from the 
	 database.

	-An user can access to his/her own inbox where he/she can send messages to other users, as well as read
	 received and sent messages. The user has the option to delete messages that he/she has already read or sent.

	-Finally, the user can log out of the system for security reasons.

ADMINS:

	-An admin can move in the web site the same way as a guest but has a view of all public and private events.

	-An admin can see, edit and delete either public or private events on the database. Can edit and delete
	 organizations, as well as event comments and users. For security reasons an admin can't change an user's
	 password.

	-Finally, the admin can log out of the system for security reasons.



Feedback after delete, create and edit actions. Delete actions require a confirmation.

AuP and ToS link shown on footer section of the website.

Guests, users and admins can search for events, users and organizations in relevant locations of the website.


--PENDING FEATURES--

Search engine for Events can show private events that should not be accessible to some users and all guests.

Polishing the "Show Event" page. Specifically the poll section and file attachments.


~Felipe Román~

