# System masonry api

Masonry is an administrative system designed to manage Masonic lodges. It comprises an administrative area, where administrators can carry out tasks related to managing the store, and an area for store members, who can navigate through different sections within the system.

In the development of Masonry, we used the Ruby language together with the Ruby on Rails framework for the back-end development. Ruby on Rails is known for its productivity and ease of use in building web applications. To ensure code quality and ease of maintenance, we adopted RSpec as our test library. RSpec is a powerful tool for behavior testing in Ruby, allowing us to describe the expected system behavior clearly and concisely.

In addition to RSpec, we also use Devise for user authentication and authorization. Devise is a popular Ruby on Rails library for managing authentication and access control. It provides robust features such as email authentication, password recovery and creating user permissions.

To maintain a consistent and quality code, we make use of Rubocop, which is a Ruby code static analysis tool. Rubocop helps us follow good coding practices, identify potential issues, and maintain a consistent coding style across the entire project.

On the front-end, we are using Bootstrap, which is a popular CSS framework, to facilitate the creation of a responsive and visually pleasing interface. Additionally, we are using JavaScript to add interactivity and dynamism to the system pages.

All Masonry development is being test-driven, following the Test-Driven Development (TDD) approach. This means that we write tests before we even implement the code, which helps us to ensure that the system is working correctly from the start. In addition, we are attentive to design standards and the creation of clean code, seeking a well-defined architecture and the use of good programming practices.

In this way, we are building Masonry solidly, reliably and with a focus on code quality and the satisfaction of Masonic lodge users.

## Informações para roda local a aplicação



* Ruby version
```ruby
 3.2.0
```
* System dependencies

* Configuration
* 
* Database creation
  se preferir manual
````ruby
* rails db:drop db:create db:migrate
````
* Database initialization

* How to run the test suite
````ruby
rspec 
````
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Member Modeling
  [Modeling for model](https://github.com/Degrausoftware/masonry/blob/main/erd.pdf)
  [Modeling for model Lodges](https://github.com/Degrausoftware/masonry/blob/release/v0.1/Screenshot_from_2023-04-13_16-38-07.png)
