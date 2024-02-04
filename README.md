# MyApp

## Setup

```
  git clone git@github.com:michaelwa/my_app.git
  cd my_app
  mix deps.get
  mix compile 
```

## Initialize EdgeDB 

```
  # initialize database
  edgedb project init
  
  # start ui 
  edgedb ui
```

## Insert record and verify it exists

1. In the application started in your browser in the last step, click on the "Editor" icon in the left navbar.
2. Paste in the code below 

```
insert User {
  name := "Michael"
}
```

3. Then press CTRL+ENTER
4. Create a new query and select the data back out again. 

```
select User {
  name
}
filter .name = "Michael"
```
* Note the following in the response window.
```
[
  {
    "name": "Michael"
  }
]
```

## Run iex from the command line
```
> iex -S mix 
```

## Verify the EdgeDB client is working

1. Start a EdgeDB client.

```
iex(1)> {:ok, client} = EdgeDB.start_link()

{:ok, #PID<0.463.0>}
```

2. Query the data.

```
iex(2)> EdgeDB.query!(client, "select User { id, name, friends: { id, name, } }")

#EdgeDB.Set<{#EdgeDB.Object<id := "628da6f8-c2c2-11ee-82de-97b7577ea168", name := "Michael", friends := #EdgeDB.Set<{}>>}>

```

* Note: There is data.

3. Now try running an :edge_ecto example.

```
iex(1)>   MyApp.EdgeDB.Accounts.get_user_by_id("628da6f8-c2c2-11ee-82de-97b7577ea168")

** (EdgeDB.Error) InvalidArgumentError: value can not be encoded as object: "628da6f8-c2c2-11ee-82de-97b7577ea168"
    (edgedb 0.6.1) lib/edgedb.ex:893: EdgeDB.unwrap!/1
    (my_app 0.1.0) lib/my_app/edgedb.ex:2: MyApp.EdgeDB.Accounts.get_user_by_id/2
    iex:1: (file)
```

