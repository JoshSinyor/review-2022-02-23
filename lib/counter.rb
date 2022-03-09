# frozen_string_literal: true

def total_results(results)
  green = 0
  results_array = results.split(", ")

  results_array.each do |result|
    green += 1
  end

  "Green: #{green}"
end
