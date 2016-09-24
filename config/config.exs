# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :n_from_the_top,
  ecto_repos: [NFromTheTop.Repo]

# Configures the endpoint
config :n_from_the_top, NFromTheTop.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FZ43PM5JPDk5zuk7Ys1lRqgTjYxsQPrDNYHdjuvFzaLGiy7/x8ADYiuxVme422tv",
  render_errors: [view: NFromTheTop.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NFromTheTop.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
