defmodule ComponentEx.Style do
  @moduledoc """
  Helpers for dealing with CSS
  """

  @doc """
  Takes a map with the format of `%{"class-name": boolean}` and returns
  a combined string of all the key's with a `true` value.

  ## Examples

  
      classes = %{"bg-black" => true, "color-white" => true, "color-red" => false}
      ComponentEx.Style.classes_cond(classes)
      "bg-black color-white"


  """
  @spec class_cond(map) :: String.t
  def class_cond(classes_map) do
    filterer = fn {_k, v} -> v == true end
    mapper = fn {k, _v} -> k end

    Enum.filter_map(classes_map, filterer, mapper)
    |> Enum.join(" ")
  end

  @spec classes_to_string(list) :: String.t
  def classes_to_string(class_list), do: Enum.join(class_list, " ")

  @spec inline(map) :: String.t
  def inline(styles_map) do
    Enum.map_join(styles_map, ";", fn {k, v} ->
      "#{k}:#{v}"
    end)
  end
end
