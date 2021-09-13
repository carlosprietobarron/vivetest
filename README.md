# Technical Test for ViveTech
> Esta es una aplicación simple de prueba para RoR.

#
## Live Demo

[Technical Test ON HEROKU](https://thawing-beach-24532.herokuapp.com/)#


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

The call shall be made as the following example :  

post(`https://thawing-beach-24532.herokuapp.com//cargos/import`, data)

If the request is successful it will respond with a json formmated resposen like the following:

```
[
    {
        "name":"Producto 1",
        "description":"Runners like tenis most famous",
        "variants":[
            {"name":"model 1", "precio":1500},
            {"name":"model 2", "precio":1600},
            {"name":"model 3", "precio":1600}
        ]
    },
    {
        "name":"Pants Producto 2",
        "description":"Be Ware of Dog",
        "variants":[
            {"name":"model 1", "precio":400},
            {"name":"model 2", "precio":450},
            {"name":"model 3", "precio":500},
            {"name":"model 4", "precio":500}
        ]
    }
]
```

