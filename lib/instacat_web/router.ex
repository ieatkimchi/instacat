defmodule InstacatWeb.Router do
  use InstacatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
      schema: InstacatWeb.Schema

    if Mix.env === :dev do
      forward "/graphiql", Absinthe.Plug.GraphiQL,
        schema: InstacatWeb.Schema
    end
  end
end
