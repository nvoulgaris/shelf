# Overview
A Ruby Sinatra web service that manages book libraries

# Build

In order to build the application, execute the following command:

```
bundle install
```

# Run

1) Run mongodb via the following command:

```
sudo service mongodb start
```

2) Optionally, check if the status is `active` using:

```
sudo service mongodb status
```

3) Run the application via the following command:

```
bundle exec ruby server.ru
```

Alternatively, use:

```
rackup server.ru
```
