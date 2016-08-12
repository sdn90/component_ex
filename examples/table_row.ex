defmodule TableRow do
  use ComponentEx.Component

  def render(props) do
    ~E"""
    <tr>
      <%= Enum.map(props.values, fn value -> %>
        <td><%= value %></td>
      <% end) %>
    </tr>
    """
  end
end
