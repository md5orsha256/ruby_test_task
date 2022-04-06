# README

## About
This is a test task in [Ruby][ruby].

This implementation is based on the [Ruby on Rails (RoR)][rails] framework.

## System dependencies
 * [Ruby][ruby] [3.1.1](https://www.ruby-lang.org/en/news/2022/02/18/ruby-3-1-1-released/)
 * [Postgres][postgres]


## Installation step by step

1. Install [RoR][rails]
    ```shell
   gem install rails
   ```

2. Install project dependencies
    ```shell
   bundle install
    ```

3. Create .env file
    ```shell
   cp .env.sample .env
    ```
   Open the [`.env`](.env) file and follow the instructions given in this file

4. [Create database](https://www.postgresql.org/docs/current/sql-createdatabase.html).
   If you have the appropriate permissions, you can do it with [RoR][rails] tools:
    ```shell
   rails db:create
    ```
   If the database already exists, first run `rails db:drop` if you need to delete it.

5. Apply migrations
    ```shell
   rails db:migrate
    ```


6. For running development server - you can run follow command:
   ```shell
   rails s
   ```

7. Praise yourself, you are amazing!


[ruby]: https://www.ruby-lang.org/
[rails]: https://rubyonrails.org
[postgres]: https://rubyonrails.org 