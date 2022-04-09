# Ruby - Getting Started Tutorial
This project serves as a guide to help you build an application with the FreeClimb ruby SDK. This project will: 

- Accept an incoming call and respond with a PerCL command

## Setting up your new app within your FreeClimb account
- To get started using a FreeClimb account, follow the instructions [here](https://docs.freeclimb.com/docs/getting-started-with-freeclimb).

## Setting up the Tutorial
Install the necessary ruby gems using command:

```bash
  bundle install
```
To install freeclimb from source:
```bash
  cd <ruby sdk directory>
  gem build freeclimb.gemspec
  gem install ./freeclimb-<version number>.gem
```
Note that if the gem is aleady built, trying to build the gem inside the ruby sdk directory will produce errors. Delete the gem file and rebuild.

## Running the Tutorial
Start the ruby server.

You can optionally set the `PORT` environment variable in this example (defaults to `3000`)

```bash
  PORT=3000 bundle exec rake start
```

## Getting Help

If you are experiencing difficulties, [contact support](https://freeclimb.com/support).
