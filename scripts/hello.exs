defmodule Hello do
  def world(message) do
    IO.puts("Hello World! #{message}")
  end
end

Hello.world()
