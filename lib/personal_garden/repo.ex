defmodule PersonalGarden.Repo do
  use Ecto.Repo,
    otp_app: :personal_garden,
    adapter: Ecto.Adapters.Postgres
end
