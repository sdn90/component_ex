defmodule ComponentEx.Style do

  @spec class_names(list) :: String.t
  def class_names(class_list) do
    filterer = fn {k, v} -> v == true end
    mapper = fn {k, v} -> k end

    Enum.filter_map(class_list, filterer, mapper)
    |> Enum.join(" ")
  end

end
