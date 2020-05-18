# Alpha Blog Rails Demo

Alpha Blog is a very basic Rails Blog Web Application.  It has users, articles, and categories.  Anyone can signup to be a user and any user can make an article.  Users are a basic model that has_many articles and can be an admin.  Articles are a basic model and they belong_to one user.  Categories is a basic model that has_many articles through article_categories, and has_many article_categories.  That being said, article_categories is a Join Model between articles and categories.  Each article_category belongs_to one article and belongs_to one category.  Authentication is basic and uses password_digest through bcrypt.  Users can only edit and delete articles that belong to them.  Admins can edit and delete any article, and can create, edit, update, and delete categories.  It uses Kaminari for pagination.

## Getting Started

These instructions will allow you to make a copy of the project yourself, and get it up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

RubyMine 2019.3, Ruby 2.6.6, and Rails 6.0.2.2 were used to initially make this project on a machine with PostgreSql installed locally.  The application was created as minimalistically as possible.  SQLite should work as well as any other database. 

## FOR REFERENCE:

### Params on Every Page During Development

Add this to app/views/layout/application.html.erb:

```html
  <div class="container mt-5" style="background-color: #eaeaea;border: 1px solid #eaeaea">
    <%= debug(params) if Rails.env.development? %>
  </div>
```

### Install Bootstrap (via Webpacker not Sprockets)

In the Terminal:

```shell
$ yarn add bootstrap jquery popper.js
```
Update config > webpack > environment.js:

```javascript
const { environment } = require('@rails/webpacker')

const webpack = require("webpack")
environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
}))

module.exports = environment
```

Update app > javascript > packs > application.js:

```javascript
import "bootstrap";
```

Create app > javascript > stylesheets > application.scss:

```scss
@import "bootstrap";
```

Update app > views > layouts > application.html.erb:

```ruby
<%= stylesheet_link_tag ... %>
```
to
```ruby
<%= stylesheet_pack_tag ... %>
```

Update app > javascript > packs > application.js:

```javascript
import "../stylesheets/application";
```

Create app > javascript > packs > custom.js:

```javascript
// For Bootstrap //////////////////////////
$(function() {
    $('[data-toggle="tooltip"]').tooltip();
});

$(function() {
    $('[data-toggle="popover"]').popover();
});
// For Bootstrap //////////////////////////
```

Update app > javascript > packs > application.js:

```javascript
import "./custom";
```

### Install Kaminari

In the Gemfile:

```ruby
gem 'kaminari'
```

In the Terminal:

```shell
$ rails generate kaminari:config
```

In the Terminal:

```shell
$ rails generate kaminari:views bootstrap4
```

Index Action of ArticlesController:

```ruby
@articles = Article.order(:created_at).page params[:page]
```

Index Article View:

```ruby
<%= paginate @articles %>
```

## Running the tests

Tests to come at a later date.  Want to write some?

## Deployment

Should easily deploy to Heroku.  Instructions for that at a later date if needed.

## Built With

* [Ruby](https://www.ruby-lang.org/en/) - Language
* [Ruby on Rails](https://rubyonrails.org) - MVC Framework
* [RubyMine](https://www.jetbrains.com/ruby/) - IDE
* [PostgreSQL](https://www.postgresql.org) - Database
* [Bootstrap](https://getbootstrap.com) - Web Framework
* [Kaminari](https://github.com/kaminari/kaminari) - A Pagination Gem

## Contributing

If you want to ...

## Authors

* **Jeremy Hastings** - *Initial work* - [Jeremy Hastings](https://github.com/jeremyhastings/)

## License

This project is licensed under the GNU General Public License 3.0 License - see the [LICENSE.md](LICENSE.md) file for details
