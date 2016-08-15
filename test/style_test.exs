defmodule ComponentExStyleTest do
  use ExUnit.Case, async: true
  doctest ComponentEx
  alias ComponentEx.Style

  describe "ComponentEx.Style.class_cond/1" do
    test "it should transform a map into a string" do
      class_names = %{"black" => true,
                      "green" => true,
                      "blue"  => false}
                      |> Style.class_cond

      assert class_names == "black green"
    end
  end

  describe "ComponentEx.Style.inline/1" do
    test "it should transform a map into a string" do
      styles_map = %{"background-color" => "#000",
                     "color" => "#fff",
                     "display" => "block"}
                     |> Style.inline

      assert styles_map == "background-color:#000;color:#fff;display:block"
    end
  end
end
