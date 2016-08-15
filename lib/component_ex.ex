defmodule ComponentEx do
  @doc """
  Calls `render/2` on the given module
  """
  @spec render_component(module, map) :: Phoenix.HTML.safe
  def render_component(module, props) do
    apply(module, :render, [props])
  end

  @doc """
  Calls `render/3` on the given module
  """
  @spec render_component_with(module, map, [do: any]) :: Phoenix.HTML.safe
  def render_component_with(module, props, [do: block]) do
    apply(module, :render, [props, block])
  end
end
