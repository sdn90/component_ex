defmodule Table do
  use ComponentEx.Component

  @spec render(map) :: Phoenix.HTML.safe
  def render(props) do
    tag :table do
      tag :thead do
        Enum.map(props.headers, fn(header) ->
          content_tag :th, header
        end)
      end
    end
  end

end
