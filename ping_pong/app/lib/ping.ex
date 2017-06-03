defmodule App.Ping do
    
    def start() do
        wait()
    end

    def wait() do
        receive do
            {pid, :pong} -> send(pid, {self(), :ping}) 
            IO.puts "Pong"
        end
        wait()
    end
end