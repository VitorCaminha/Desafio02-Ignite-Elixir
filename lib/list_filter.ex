defmodule ListFilter do
  def call(list) do
    list
    |> Enum.flat_map(fn element -> parseNumber(element) end)
    |> Enum.count(fn number -> rem(number, 2) == 1 end)
  end

  defp parseNumber(element) do
    case Integer.parse(element) do
      {number, _} -> [number]
      :error -> []
    end
  end
end
