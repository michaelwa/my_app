defmodule MyApp.Accounts.User do
  use Ecto.Schema
  use EdgeDBEcto.Mapper

  @type t() :: %__MODULE__{
      id: binary(),
      name: String.t() | nil,
      friends: list(t()) | Ecto.Association.NotLoaded.t()
  }

  # we need custom config for :id because in EdgeDB its UUID
  @primary_key {:id, :binary_id, autogenerate: false}

  schema "default::User" do
      field :name, :string

      has_many :friends, User
  end
end
