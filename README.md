# Technical Test for ViveTech
> Esta es una aplicación simple de prueba para RoR.

#
## Live Demo

[Technical Test ON HEROKU](https://perform-track.herokuapp.com/)#



# Built With

- Ruby on Rails
- Postgress


# USER GUIDE

## To install it locally

Clone  this repository or download the zip version to your local disk and extract it.

Run the command

``` bundle ```

Then you must create the database with:

``` rails db:create ```

following you should run the migrations to create the tables.

``` rails db:migrate ```

At the end you should run the following command to run the API service.

``` rails server ```


## Import product data

To create user you can use the endpoint: POST :  https://gentle-shore-76199.herokuapp.com/users 

using the following json data :
```
data = {
      name: username,
      email: email,
      password: password,
      password_confirmation: passwordConfirmation
    }
```

The call shall be made as the following example using axios:  

post(`https://gentle-shore-76199.herokuapp.com/users`, data)

If the request is successful it will respond with a json formmated resposen like the following:

```
{
    "user": {
        "id": 4,
        "name": "testuser",
        "email": "testuser@performapi.edu",
        "password_digest": "$2a$12$N9RSyO1b9u0SE45q8xvAAe806WZZA5Km2GkMZ6atDPS6YhX/MSbfW",
        "role": null,
        "created_at": "2021-06-07T17:12:46.781Z",
        "updated_at": "2021-06-07T17:12:46.781Z"
    },
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2MjU2Nzc5NjZ9.7BxNxLGrEwNGSU8u5pUZisT9mW6d5Hzr3uS_SqalSBo",
    "status": 201,
    "message": "Log in successful"
}
```

Which incliude the status and the created token for the user session.

## Login control

To Login the user to the API app you can use the following request:  

post(`https://gentle-shore-76199.herokuapp.com/login`, data)

using the following json data :

```
data = {
      name: username,
      password: password,
      }
```

If the request is successful it will respond with a json formmated resposen like the following:

```
{
    "user": {
        "id": 4,
        "name": "testuser",
        "email": "testuser@performapi.edu",
        "password_digest": "$2a$12$N9RSyO1b9u0SE45q8xvAAe806WZZA5Km2GkMZ6atDPS6YhX/MSbfW",
        "role": null,
        "created_at": "2021-06-07T17:12:46.781Z",
        "updated_at": "2021-06-07T17:12:46.781Z"
    },
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo0LCJleHAiOjE2MjU2NzgyOTZ9.H8ngm_52Mht3sQkY59dfWXHMORPn3Yr02YeObSU-cNw",
    "status": "created"
}
```

