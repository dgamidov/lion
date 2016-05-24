# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lion,
  ecto_repos: [Lion.Repo]

# Configures the endpoint
config :lion, Lion.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "rM2UwERC12r0if/dJ94jT0t5QEsl/7w36Hs7VMRTZdFbwAcLwYGgymzqTuM6oQn6",
  render_errors: [view: Lion.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lion.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
