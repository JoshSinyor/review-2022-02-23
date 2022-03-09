# frozen_string_literal: true

def total_results(results)
  parse_results_array(results.split(', '))
end

private

def parse_results_array(results_array)
  green = 0

  results_array.each { |_result| green += 1 }

  "Green: #{green}"
end
