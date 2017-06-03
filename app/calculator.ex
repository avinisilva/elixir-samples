defmodule Calculator do
    def start() do
        john = %Student{name: "John dog", results: build_subjects([5.2, 3.9, 2.7, 9.8])}
        jack = %Student{name: "Jack nilman", results: build_subjects([4.5, 4.9, 8.7, 3.8])}
        nico = %Student{name: "Nico haves", results: build_subjects([5.5, 7.6, 8.0, 4.5])}
        jemma = %Student{name: "Jemma piper", results: build_subjects([8.5, 7.6, 8.9, 9.5])}
        
        result = calculate([john, jack, nico, jemma])
        best = best_result(result)

        {result, best}
    end

    defp calculate(students) do
        students 
        |> Enum.map(&(
        %{
            first_name: Student.first_name(&1),
            last_name: Student.last_name(&1), 
            average: average(&1)
            }
        ))
    end

    defp best_result(students) do
        best = students
        |> Enum.map(&(&1.average))
        |> Enum.max

        students
        |> Enum.filter(&(&1.average === best))
    end

    defp average(student) do
        total = Enum.count(student.results)
        
        result = student.results
        |> Enum.map(&(&1.result))
        |> Enum.reduce(&(&1 + &2))

        Float.ceil(result / total, 2)
    end

    defp build_subjects(results) do
        subjects = ["Matemática", "Português", "Geografia", "História"]
        subjects
        |> Enum.map(&(%Subject{name: &1, result: Enum.random(results)}))
    end
end