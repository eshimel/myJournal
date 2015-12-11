Two Github repos (one for your front-end and one for your back-end), with frequent commits dating back to the very beginning of the project. Each repo will need a README.md file with a link to the other repo. Your front-end repo's README should also have
An explanation of the what the app does and how it works, the approach taken in building it, and any unsolved problems that you hit.
User stories written for your app.
At least one wireframe (or a link to one) that you've created to plan out your app.
A link to the live application.





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
