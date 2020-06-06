defmodule IssueDemoStruct do
  use TypedStruct
  typedstruct do
    field :i_am_a_map, map()
  end
end

defmodule IssueDemo do

  def i_am_a_function(%IssueDemoStruct{i_am_a_map: i_am_a_map} = result) do

    {_, _, _} = cond do
      Map.has_key?(i_am_a_map, "ABC") && Map.has_key?(i_am_a_map, "DEF") -> {"DEF", "GHI", "ABC"}
      Map.has_key?(i_am_a_map, "JKL") && Map.has_key?(i_am_a_map, "DEF") -> {"DEF", "GHI", "JKL"}
      Map.has_key?(i_am_a_map, "ABC") && Map.has_key?(i_am_a_map, "MNO") -> {"MNO",   nil, "ABC"}
      Map.has_key?(i_am_a_map, "JKL")                                    -> {"JKL",   nil,   nil}
    end

    result
  end

end