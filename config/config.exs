# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :instacat,
  ecto_repos: [Instacat.Repo]

# Configures the endpoint
config :instacat, InstacatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QHz0xUGJiKYorU0EH+vQ0uVYJyHPtH5UOltIn7B/R9GaVtS6UMM/RBzyWAl0MQa9",
  render_errors: [view: InstacatWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Instacat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
