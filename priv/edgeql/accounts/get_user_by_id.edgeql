# edgedb = :query_single!
# mapper = MyApp.Accounts.User

select User {
  id,
  name,
  friends: {
    id,
    name,
  },
}
filter .id = <uuid>$id