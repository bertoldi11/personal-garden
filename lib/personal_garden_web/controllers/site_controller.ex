defmodule PersonalGardenWeb.SiteController do
  use PersonalGardenWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
