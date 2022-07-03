## 1. Project name & Description
Disaster Reporting System
Disaster Reporting System is a system created to collect data on disaster victims and assist volunteers in digitally managing disaster victim data as well as a system that distributes articles or information about disaster mitigation

## 2. Features (list down all features of your app)
User Page
* Users can access information about disaster mitigation
* Users can access disaster news information from volunteers
*Users can access detailed disaster information from volunteers such as victim data, building damage data

Volunteer Page
* Volunteers can manage (CRUD) disaster news information
* Volunteers can manage (CRUD) detailed information such as victim data, building damage data

## 3. How to install & run
* git clone https://github.com/irvnh05/capstonegigih [A public project of github]
* cd project 
* git chekcout api / git switch api
* bundle install
* rails db:migrate
* rails server

## Documentation API
Auth
* Login | POST |  http://localhost:3000/auth/login 
* Regis| POST |  http://localhost:3000/api/v1/users

User
* Get all | GET | http://localhost:3000/api/v1/users
* Get by username  | GET | http://localhost:3000/api/v1/users
* Update | PUT | http://localhost:3000/api/v1/users/update
* Delete by username | DELETE | http://localhost:3000/api/v1/users

Article
* Get All | GET | http://localhost:3000/api/v1/articles
* Create | POST | http://localhost:3000/api/v1/articles
* Get by id | GET | http://localhost:3000/api/v1/articles
* Update | PUT | http://localhost:3000/api/v1/articles
* Delete  | DELETE | http://localhost:3000/api/v1/articles

Report
* Get All | GET | http://localhost:3000/api/v1/reports/
* Create | POST | http://localhost:3000/api/v1/reports/
* Get by id | GET | http://localhost:3000/api/v1/reports/
* Update | PUT | http://localhost:3000/api/v1/reports/
* Delete  | DELETE | http://localhost:3000/api/v1/reports/
