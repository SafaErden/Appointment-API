# Macroverse Course Service API

A RESTFUL API built with Ruby on Rails. Its uses BCrypt and JWT gems to implement Authentication & Authorization. It performs CRUD operations on the various resources it serves.

## About this project

This API is built as the back end for a web application built with React on the front end and is separately deployed to Netlify.

## End Points
There are a couple of endpoints exposed by this api and can be accessed online using [this path](https://mysterious-sands-69986.herokuapp.com/) as the base Url.

POST
/users - (create user account)
/appointments - (create appointment)
/login - (create user session)

GET
/courses - (fetch all courses)
/my - (fetch booked courses)

DELETE
DELETE /appointments/:id - (delete appointment)

## Built With
-Ruby on Rails
-BCrypt gem
-JWT gem
-Postgresql
-Heroku
-Rspec

## Live Demo
For the full working application Click [here](https://mysterious-sands-69986.herokuapp.com/)

## Installation
To get a local copy up and running follow these simple example steps.

### Setup
Clone [this](https://github.com/SafaErden/Appointment-API) repo

### Follow:
1. cd into the project directory
2. run bundle install
3. run rails db:migrate
4. run rails s -p 3001
5. Navigate to localhost:3001


## Author

👤 **Safa ERDEN**

- Github: [@SafaErden](https://github.com/SafaErden)
- Twitter: [@safaerden](https://twitter.com/safaerden)
- Linkedin: [SafaErden](https://www.linkedin.com/in/safaerden/)
- Mql5: [safaerden](https://www.mql5.com/en/users/safaerden)
- Email: [safaerden](mailto:safaerden@gmail.com)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/SafaErden/Appointment-API/issues)

## Show your support

Give a ⭐️ if you like this project!