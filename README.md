 
#MyJournal The App

##Use MyJournal as a tool to keep a personal account of the what's happening in your life.  You can  pull up a list of all of your entries, delete previous entries, and rename an entry, if your writing goes in a different direction than when you first started your post.  Sorry, no going back in and editing a post.  It’s like a paper journal, you'll just have to "rip out the page" by deleting it.  A future feature will be the “rate my day” quick post, that gives users the option to give a quick 1-10 rating of how they feel their day is going.
This app was inspired by an area art therapy organization’s daily check-in/check-out protocols that I spent the last year prior to becoming a developer working with.

#User Stories

As a user, the primary user, I need to be able to easily use the web console so that I can debug and troubleshoot the application that I am writing.
This frontend design of this app has been designed with using the bootstrap framework, specifically for a mobile app.  The reason is so that it was easier to see the workings of the app with the web console displayed larger.
As a user, the not me user, I need to see how the app works, so that I can decide whether to I want to register to use it.

As a user, I need to login, so that I can create entries.

As a user, I need to write entries, so that I can add to my journal.

As a user, I need to see past entries, so that I can review what I wrote.

As a user, I need to update titles, so that I can make my personal narrative sound more awesome.

As a user, I need to delete entries, so that I can have the satisfaction that mirrors ripping pages out of a paper  journal.



link to frontEnd Repo  https://github.com/eshimel/myJournal_frontend-aSQL


I used the following curl requests a lot to test this app.

# User authentication

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
    "password_confirmation": "an example password"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password"
  }
}' http://localhost:3000/login
```

## Logout

```
curl --request DELETE --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/logout/1
```
curl --request DELETE --header "Authorization: Token token=e1e55f2a1f86f3a99c38849b1f0a1f19" http://localhost:3000/logout/1


# Users

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

# Books

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

**OR**

```
curl http://localhost:3000/users
```

## Create

```
curl --request POST --header "Authorization: Token token=be249dc0231396806f24c953cafae03a" --header "Content-Type: application/json" -d '{
  "book": {
    "title":"The Hold",
    "isbn":"abc123def456"
  }
}'  http://localhost:3000/books
```
