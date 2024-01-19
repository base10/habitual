# Tech stack

Anticipated

 Ruby 3.3
- Rails 7.1.2
- Postgres 16.1
    - Homebrew locally
    - Docker with a [persisted volume](https://docs.docker.com/storage/volumes/) for deployments
- SolidQueue
    - Not needed for the moment
- SolidCache
    - Not needed for the moment
    - I will already need Redis  for ActionCable
- Kamal for app deployment
- Hotwire / Turbo 8
- RSpec
    - `factory_bot`
- Flipper, should I need feature flags at some point
