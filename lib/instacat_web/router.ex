defmodule InstacatWeb.Router do
  use InstacatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InstacatWeb do
    pipe_through :api
  end
end
