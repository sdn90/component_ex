defmodule ComponentEx do

  def render_component(module, props) do
    apply(module, :render, [props])
    |> Phoenix.HTML.safe_to_string
  end

  def render_component(module, props, block) do
    props_with_children =
      Map.put(props, :children, block[:do])

    apply(module, :render, [props_with_children])
    |> Phoenix.HTML.safe_to_string
  end
end
