# Doctor appointment (Final Capstone)

<a id="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
  - [🎬 Representation](#representation)
  - [🧮 Kanban Board](#kanban-board)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Doctor appointment (Backend) <a id="about-project"></a>

**Doctor appointment** The Doctor Appointment app is a user-friendly platform designed to facilitate the process of scheduling and managing medical appointments. Whether you're seeking consultations, check-ups, or specialized medical services, this application provides a seamless interface to connect patients with healthcare providers.

Backend is implement as API-only. The front end is implemented utilizing the React framework.

-  The backend Rails app is implemented as API-only. The application starts by fetching the `users` method on the backend, if the backend is available then the user will login by making a query to `users/new_session`.

-  The doctor controller provides an `index` method to get all the data for doctors, and a `show` method to get details about a specific doctor. The `destroy` method deactivates the doctor when the user sends a delete query by clicking on delete.

-  The reservation controller also provides `index` methods. Index is used to get a list of all reservations made. 
 
## 🛠 Built With <a id="built-with"></a>

### Tech Stack <a id="tech-stack"></a>

<details>
  <summary>Ruby on Rails</summary>
  
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
    <li><a href="https://www.postgresql.org/">Postgresql</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a id="key-features"></a>

- **Ability to see the featured doctors on the homepage**
- **The ability to reserve doctors based on selecting the date and doctor name**
- **The ability to add doctors to the database**
- **The ability to delete doctors**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a id="live-demo"></a>

Live demo for the website [Coming Soon]().

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🎬 Kanban Board <a id="kanban-board"></a>

Link to the [Kanban Board](https://github.com/tajulafreen/Final-capstone-Backend/projects/1)

<!-- GETTING STARTED -->

## 💻 Getting Started <a id="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project, you need to:

- Install Ruby
- Install Rails
- Install Posgresql
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Setup

Clone this repository to your desired folder:

``` 
  git clone https://github.com/tajulafreen/Final-capstone-Backend.git 
```

### Install

Install this project with these commands:

```
  cd hotel-hub-backend
  bundle install
  rails db:create
  rails db:migrate
  rails db:seed
  ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Database Setup.

Before creating database, you have to configure the master key for your project. This can be done in two ways.

1. **Using our own master key that we have provided**
cd into the project folder and in your terminal run

``` 
rails rake:secret

```
- This command will generate a master.key file and inside that file replace the key with the one shown below.

**[4099d6598a781b627e9488716c68382f]**

- Proceed to creating db.

2. **Generating your own master Key**

- Remove config/master.key and config/credentials.yml.enc if they exist.
- Run in the terminal: EDITOR=code rails credentials:edit 
- Close the editor that opens.
- This command will create a new master.key and credentials.yml.enc if they do not exist.

- After this proceed to creating db with:
```
  rails db:create
  rails db:migrate
  rails db:seed
  ```
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Usage
 
To run the project execute the following command:

``` 
 rails s
```

or

```
./bin/dev
```

- You can use the following emails and passwords from seeded data to login from the frontend.

for admin
```
user1 = User.create(
  name: 'John Doe',
  email: 'john@example.com',
  password: 'password123',
  role: 'admin'
)

```
for a Normal User

```
user2 = User.create(
  name: 'Jane Smith',
  email: 'jane@example.com',
  password: 'password456',
  role: 'user'
)
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

###  Tests <a id="run-tests"></a>

To run the tests for models and requests, execute the following command:

```
rspec ./spec/models
rspec ./spec/requests/api/v1

```
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->
## 👥 Authors <a id="authors"></a>  
 
👤 **Tajul Afreen**
- GitHub: [@githubhandle](https://github.com/tajulafreen)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/tajul-afreen/)
 

👤 **Foga Kater Amos**

- GitHub: [@katfogy](https://github.com/katfogy)
- LinkedIn: [foga](https://www.linkedin.com/in/foga/)

👤 **Diana Beki**

- GitHub: [Diana Beki](https://github.com/DianaBeki)
- LinkedIn: [Diana Beki](https://www.linkedin.com/in/diana-beki-b49684230/)


👤 **Kiko**

- GitHub: [@kit0-0](https://github.com/kit0-0)
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a id="future-features"></a> 
 
- **[Payment Integration into the System]**
- **[Add email confirmation]**
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a id="contributing"></a>

Contributions, issues, as well as feature requests are welcome!

Feel free to check the [issues page](https://github.com/tajulafreen/Final-capstone-Backend/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->
## ⭐️ Show your support <a id="support"></a>

If you like this project, kindly leave a comment below and share it with
someone who enjoys coding! or still, give us a ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->
## 🙏 Acknowledgments <a id="acknowledgements"></a>
 
-  Thanks to our amazing team members and coding partners for their invaluable contributions and dedication. 
-  The Design reference for the website belongs to [Murat Korkmaz](https://www.behance.net/muratk). You can find the reference [here](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
 
## 📝 License <a id="license"></a> 

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
