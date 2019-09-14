defmodule Identicon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
  end

  def build_grid(%Identicon.Image{hex: hex} = image) do
    hex
    |> Enum.chunk(3)
  end

  def mirror_row(row) do
    # first [el1, el2, el3]
    [first, second | _tail ] = row

    # final result [el1, el2, el3, el2, el1]
    row ++ [second, first] # To append to list, use ++
  end

  # Pattern matching straight away in the argument which result in [r,g,b]
  # and within the function create new Image and update the values
  def pick_color(%Identicon.Image{hex: [r,g,b | _tail]} = image) do
    # %Identicon.Image{hex: [r,g,b | _tail]} = image -> pattern matching
    # [r,g,b | _tail ] = hex_list -> give the first 3 values but ignore the rest
    %Identicon.Image{image | color: {r,g,b}}
  end

  @doc """
    In Javascript
    
    pick_color: function(image){
      image.color = {
        r: image.hex[0],
        g: image.hex[1],
        b: image.hex[2]
      }

      return image;
    }
  """
  

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
