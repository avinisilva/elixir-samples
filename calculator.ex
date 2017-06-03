# function definition
defmodule Calculator do
    @moduledoc """
        Documentation module 
    """
    def mult(a, b) do
        a * b
    end

    # private
    defp sum(a, b) do
        a + b
    end

    defmodule Submodule do
        def hello(text) do
            text
        end
    end
end