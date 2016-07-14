# shoko

esa clone

## Install
```
$ git clone --recrusive git@github.com:cncgl/shoko.git
```

or 
```
$ git clone git@github.com:cncgl/shoko.git
$ git submodule init
$ git submodule update
```

create db shoko_development, shoko_test
create role shoko with password shoko

```
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```

## Usage (development)
```
$ bundle exec rails s -b 0.0.0.0
```

visit browser http://localhost:3000

account: shoko-admin / password
