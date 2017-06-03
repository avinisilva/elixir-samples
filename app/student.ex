defmodule Student do
    @moduledoc """
    Student struct
    """
    defstruct name: nil, results: []

    @doc """
    Get the first name of a Student

    ## Parameters

    - `student` - A Student struct.
    
    ## Examples

    * john = %Student{name: "John Lock"}
    * Student.first_name(john)
    * "John Lock"
    """
    def first_name(student) do
        student.name |> String.split |> List.first
    end

    @doc """
    Get the last name of a Student
    ...
    """
    def last_name(student) do
        student.name |> String.split |> List.last
    end
end