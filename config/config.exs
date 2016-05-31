# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :splurty, Splurty.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "splurty_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# Configures the endpoint
config :splurty, Splurty.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "NgKa4HLt8H8yFU9qkXcu7/i+5VljWb/Dwx5q7llJ7JH8uA9+t9myAhfLwyVEYZT8",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Splurty.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
