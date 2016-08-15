defmodule ComponentEx.TestUtils do
  @spec parse_class(String.t) :: list
  def parse_class(classes), do: String.split(classes)

  @spec parse_style(String.t) :: map
  def parse_style(styles) do
    String.split(styles, ";")
    |> Enum.map(fn(declaration) ->
      kv_list = String.split(declaration, ":")
      key =
        List.first(kv_list)
        |> String.trim
      value =
        List.last(kv_list)
        |> String.trim

      %{key => value}
    end)
    |> Enum.reduce(%{}, fn(kv, acc) ->
      Map.merge(acc, kv)
    end)
  end
end
