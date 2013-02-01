## BigosEventsBox
Widget to events.

## Installation

BigosEventsBox works with Rails 3.1 onwards. You can add it to your Gemfile with:

```ruby
gem "bigos_events_box", :git=>"git://github.com/weban/bigos_events_box.git"
```
Gems "jquery-rails" and "bigos_settings" are required

Run the bundle command to install it.

After you install BigosEventsBox and add it to your Gemfile, you need to run the generator:

```console
rails generate bigos_events_box:install
rake bigos_events_box:install:migrations
rake db:migrate
```


## Configuration

Please set generated settings



## Customization

You can use to generate view you can overwrite
```console
rails generate bigos_events_box:views
```
