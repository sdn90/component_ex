defmodule Table do
  use ComponentEx.Component

  def render(props) do
    headers =
      Enum.map(props[:headers], fn(header) ->
        ~E"<th><%= header %></th>"
      end)

    ~E"""
    <table>
      <thead>
        <%= headers %>
      </thead>
      <tbody>
      <%= props.children %>
      </tbody>
    </table>
    """

  end
end
