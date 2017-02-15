# MTyAy

Ever felt that it's a little weird that you take the train to work every day
with so many people, but never have any meaningful connection with them?

Introducing ___ , a new way to find and connect with people that share your commute.

Sign up today to begin discovering others who share your interests and are looking for people like you to ride with.

Simply enter you basic info, interests and your usual daily commute to start.

It's fun and free, and you can join the thousands of happy commuters that have livened up their day and made new friends and business connections.



## Naming

We need to find a better name for this project, it's just too hard to type out and read:

- Common Commute
- commute together
- why go alone
- unalone
- companionate
- spark
- static
- koala
- speedy taco
- friends in metal cans
- tunnel together
- tunnelers
- underground buddies
- mind the gap
- subway surfers
- green orb
- blue canoe
- ungrumpify
- straphangers
- sardine
- CrossTracks


## Features/Integrations

- Sign up with jwt authentication
- Enjoy a smooth responsive UI created with React and Redux
- Data stored in rails API
- Object Oriented CSS for front-end styling

## User flow

- User signs up using email and password with password confirmation
- User is presented with a profile page that contains basic information for public profile and contact details for private profile.
- User is presented with a list of potential friends that have a similar commute
- User can request to share a commute and meet up
- Other user receives notification and can see all request that they received
- Other user can accept a request and a ride will be created
- Once two users match, both of their private profiles will be available to each other so that they can set a place to meet
- Users can report another user if their experience with that user made them uncomfortable or the other user violated any of the rules.

## Domain Modeling

Account has one profile
Profile has many interests
Interest has many profiles
ProfileInterests belongs to profile and interest
Profile has many purpose
Purpose has many profiles
ProfilePurpose belongs to profile and interest


Profile has many commutes


Commutes belongs to profile
Commutes belongs to station
Station has many commutes
