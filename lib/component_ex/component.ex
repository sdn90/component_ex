defmodule ComponentEx.Component do
  @callback render(map) :: Phoenix.HTML.safe

  defmacro __using__(_opts) do

    quote do
      @behaviour ComponentEx.Component
      use Phoenix.HTML
      alias ComponentEx.Style
    end

  end

end
