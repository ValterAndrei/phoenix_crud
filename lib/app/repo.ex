defmodule App.Repo do
  use Ecto.Repo, otp_app: :app

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end

  def get_all_users do
    App.Accounts.User |> App.Repo.all()
  end
end
