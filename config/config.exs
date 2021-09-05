# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :banking_api,
  ecto_repos: [BankingApi.Repo]

# Configures the endpoint
config :banking_api, BankingApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Vk6kd4xMEO8T+b9CM1Oe4CNOkUgtZPmazbetKGBdWW/ZOnqwV/xkzt0QRkHC+d1W",
  render_errors: [view: BankingApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BankingApi.PubSub,
  live_view: [signing_salt: "4D7vxMgL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
