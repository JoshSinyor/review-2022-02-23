# frozen_string_literal: true

def total_results(results)
  results = results.split(',').map(&:strip).map(&:capitalize)
  parse_results(results)
end

private

def parse_results(results)
  "Green: #{results.count('Green')}\nAmber: #{results.count('Amber')}\nRed: #{results.count('Red')}"
end
