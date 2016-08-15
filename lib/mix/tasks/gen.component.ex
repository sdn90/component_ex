defmodule Mix.Tasks.Gen.Component do
  use Mix.Task

  @shortdoc "Generate a component_ex Component"
  @preferred_cli_env "development"
  def run(args) do
    OptionParser.parse!(args)
    |> IO.inspect
  end
end
