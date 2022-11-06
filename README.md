[![hire-badge](https://img.shields.io/badge/Consult%20/%20Hire%20Theophile-Click%20to%20Contact-brightgreen)](mailto:fadhili.kango@gmail.com ) [![Twitter Follow](https://img.shields.io/twitter/follow/Theophadh?label=Follow%20Theophile%20on%20Twitter&style=social)](https://twitter.com/Theophadh)

# Image Gallery App (API)

> The app can help to store images online with details

## API
[API Endpoint](https://image-gallery-app-api.herokuapp.com/)
## Frontend
[Frontend Repo](https://github.com/Theophile-Kango/image-gallery-front)
## Built With

- ruby 3.1.0
- Ruby on rails 6.1.7
- Postgresql database
- Cloudinary for image storage

## Prerequisites

- Get ruby 3.1.0 installed
- Get ruby on rails 6.1.7
- Get postgresql installed
- Cloudinary api keys <br />
  You can get your cloudinary.yml configuration <a href="https://cloudinary.com/console/cloudinary.yml">here</a>

### Setup

- Clone the repository on your local machine
- cd into the folder
- Create a .env file at the root of the project with variables. fill the varialbes with info from the yml downloaded file

  - CLOUD_NAME: "cloudinary name"
  - API_KEY: "api key"
  - API_SECRET: "api secret"
  - USER_NAME: "postgres username"
  - PASSWORD: "postgres password"
- run bundle install
- run rails db:create<br />
  The command will create the development database as well as the test database
- run rails db:migrate
- run rails server
- If everything is correct, the server will run on port 3000

## Run the test 

- You can run `bundle exec rspec spec` to execute the unit tests
