defmodule PersonalGardenWeb.Router do
  use PersonalGardenWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PersonalGardenWeb do
    pipe_through :browser

    get "/", SiteController, :index
  end


  # Other scopes may use custom stacks.
  # scope "/api", PersonalGardenWeb do
  #   pipe_through :api
  # end
end
