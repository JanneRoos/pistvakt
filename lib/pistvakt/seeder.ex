defmodule Pistvakt.Seeder do
  @moduledoc """
  Seed module
  """
  alias Pistvakt.Repo

  def seed(elements, create_function) do
    {:ok, _} = Repo.transaction(fn () ->
      Enum.map(elements, create_function)
    end)
  end
end
