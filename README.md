# Alpha Blog Rails Demo

Alpha Blog is a very basic Rails Blog Web Application.  It has users, articles, and categories.  Anyone can signup to be a user and any user can make an article.  Users are a basic model that has_many articles and can be an admin.  Articles are a basic model and they belong_to one user.  Categories is a basic model that has_many articles through article_categories, and has_many article_categories.  That being said, article_categories is a Join Model between articles and categories.  Each article_category belongs_to one article and belongs_to one category.  Authentication is basic and uses password_digest through bcrypt.  Users can only edit and delete articles that belong to them.  Admins can edit and delete any article, and can create, edit, update, and delete categories.  It uses Kaminari for pagination.

## Getting Started

This application was created using RubyMine and shouldn't need much to run.  At most:
```
bundle install
```
and
```
rails db:migrate
```
followed by:
```
rails s
```
### Prerequisites

You will need Bundler 2, Ruby 2.7.1, and other packages that you will be prompted to install when you try to run:

```
bundle install
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
