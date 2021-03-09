defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the number of odd number in the given list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
