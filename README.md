## Notes
- Elixir is functional programming
- All data structure in Elixir are `immutable`
- We do not need to declare var/cons/let to make variable
- Elixir heavily use `Pattern matching`
- Elixir `Maps` is similar to `object` in JavaScript: colors = %{primary: "red"}
- Accessing Elixir `Map` can be done with `Dot notation` or `Pattern matching`
- Different between `Map` and `Keyword list`, `Keyword list` can have multiple same key
- Elixir `Struct` can only holds primitive value
- Elixir `List` did not give index, need to put index, something like `Enum.with_index`
- `.ex` meant to be compile and run, while `.exs` intepreted as script, most of the time we us `.ex`

*Using `Pattern Matching` with `Maps`*
```
colors = %{primary: "red", secondary: "blue"}
%{secondary: secondary_color} = colors
secondary_color # "blue"
```

*Updating `Values` in `Maps`*
```
  colors = %{primary: "red", secondary: "blue", tertiary: "green"}

  - With a function from Elixir helper
  Map.put(colors, :primary, "pink") # We did not update the colors, but we create a copy update

  - With a syntax
  %{colors | primary: "pink"} #Limitation, can't update add new key/value

  - Add new value use the function
  Map.put(colors, :fourth, "mocha")
```

*Keyword list in Elixir*
```
  -- One way creating keyword list, using tupple
  colors = [{:primary, "red"}, {:secondary, "green"}] #This is a tupple inside list
  colors[:primary] # "red"

  -- Or just normal
  colors = [primary: "red", secondary: "blue"]

  |> Maps = %{primary: "red", primary: "blue"} # only computed primary: "blue"
  |> Keyword list = [primary: "red", primary: "blue"] # primary: "red", primary: "blue"

```

#### What is Phoenix?
- Purpose is to serving up HTML, JSON and Web Sockets for Users
- It's the middle from Database to HTML, JSON and Web Sockets
- Phoenix doesn't care about what type of DB you are using, as long as it is supported, you can use it
- Phoenix follow `RESTful` Convention
- Phoenix comes in with a `Template Syntax` one of them is for form, ie. in topic/new.html.eex `<% form_for @changeset, topic_path(@conn, :create), fn f -> %><% end %>` this is just an elixir syntax `form_for(@changeset, topic_path(@conn, :create), fn f -> end)` @changeset is a variable from controller

#### How `HTTP Request` works inside Phoenix
---
request > router > controller (model > database > controller) > view (template > view) > response

#### REST Convention

| Intent        | Action           | Controller Function Name  |
| ------------- |:-------------:| :-----:|
| See the form to create a new topic | `GET` "/topics/new" | new |
| Submit the form to create a topic | `POST` "/topics" | create |
| Get a list of all topics | `GET` "/topics" | index |
| Delete a topic with ID of 12 | `DELETE` "/topics/12" | delete |
| See the form to update an existing topic with ID of 12 | `GET` "/topics/12/edit" | edit |
| Submit the form to update a topic with ID 12 | `PUT` "/topics/12" | update |
