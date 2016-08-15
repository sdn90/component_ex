defmodule TestUtilsTest do
  use ExUnit.Case, async: true
  doctest ComponentEx
  alias ComponentEx.TestUtils

  describe "parse_style" do
    test "it should work" do
      styles =
        "display: block; color: #000; background-color: #fff"
        |> TestUtils.parse_style

      assert styles == %{"display" => "block",
                         "background-color" => "#fff",
                         "color" => "#000"}
    end

    test "it should work with a single declaration without a semicolon" do
      style = TestUtils.parse_style("display: block")

      assert style == %{"display" => "block"}
    end
  end

  describe "parse_class" do
    test "it should work" do
      classes =
        "display-block bg-white red"
        |> TestUtils.parse_class()

      assert classes == ["display-block", "bg-white", "red"]
    end
  end
end
