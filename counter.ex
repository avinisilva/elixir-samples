defmodule Counter do
    def count([]), do: 0
    def count([head | tail]), do: 1 + count(tail)
end