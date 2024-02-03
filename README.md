# MyApp

Clone this repository
Fetch clean_up branch
Initialize EdgeDB 
Run EdgeDB UI
Insert a new user record
Run iex 
Verify EdgeDB client is working.
  {:ok, client} = EdgeDB.start_link()
  EdgeDB.query!(client, "select User { id, name, friends: { id, name, } }")

Try running the :edge_ecto example
  MyApp.EdgeDB.Accounts.get_user_by_id("628da6f8-c2c2-11ee-82de-97b7577ea168")



To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix


