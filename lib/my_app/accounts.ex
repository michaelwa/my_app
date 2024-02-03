defmodule MyApp.Accounts do
  alias MyApp.Accounts.User

  @spec get_user(binary()) :: User.t()
  def get_user(id) do
      MyApp.EdgeDB.Accounts.get_user_by_id(id: id)
  end
end
