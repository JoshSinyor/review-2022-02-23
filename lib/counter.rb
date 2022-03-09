# frozen_string_literal: true

def total_results(results)
  parse_results_array(results.split(', '))
end

private

def parse_results_array(results_array)
  green = 0
  amber = 0
  red = 0

  results_array.each do |result|
    case result.downcase
    when "green"
      green += 1
    when "amber"
      amber += 1
    when "red"
      red += 1
    end
  end

  "Green: #{green}\nAmber: #{amber}\nRed: #{red}"
end
