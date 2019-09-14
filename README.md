## Notes
- Elixir is functional programming
- All data structure in Elixir if `immutable`
- We do not need to declare var/cons/let to make variable
- Elixir heavily use `Pattern matching`
- Elixir `Maps` is similar to `object` in JavaScript: colors = %{primary: "red"}
- Accessing Elixir `Map` can be done with `Dot notation` or `Pattern matching`
- Different between `Map` and `Keyword list`, `Keyword list` can have multiple same key

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