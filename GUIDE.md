# Guide

## Creating Bootstrap Components
A great use case for components is creating helpers for CSS frameworks.
We can drastically reduce the amount of markup we have to write. As you'll
see later, the `render_component_with/2` function allows us to "nest" components
so we don't sacrifice flexibility.

### Bootstrap Button
A [Bootstrap button](http://getbootstrap.com/css/#buttons) has many
different properties but we'll be implementing only the following:

* Color
* Disabled state
* Size
* Value

```elixir
defmodule Button do
  use ComponentEx.Component

  def render(%{color: color,
               size: size,
               value: value,
               type: type}) do

    class = "btn #{color_class(color)} #{size_class(size)}"

    # tag/2 from Phoenix.HTML.Tag
    tag(:button, type: type, value: value, class: class)
  end
  
  defp color_class(type) do
    case type do
      :primary -> "btn-primary"
      :success -> "btn-success"
      :info    -> "btn-info"
      :danger  -> "btn-danger"
      :warning -> "btn-warning"
      :link    -> "btn-link"
      _        -> "btn-default"
    end
  end
  
  defp size_class(size) do
    case size do
      :xs -> "btn-xs"
      :sm -> "btn-sm"
      :lg -> "btn-lg"
      _   -> "btn-md"
    end
  end
  
end  

ComponentEx.render_component(Button, %{value: "Submit!", color: :primary, })
# {:safe, "<button type="submit" class=\"btn btn-primary\">Submit!</button>"}
```
