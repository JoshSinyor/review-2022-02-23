# frozen_string_literal: true

def total_results(results)
  results = results.split(',').map(&:strip).map(&:capitalize)
  uncounted = results.count { |result| !%w[Green Amber Red].include? result }
  return_totals(results, uncounted)
end

private

def return_totals(results, uncounted)
  <<~HEREDOC.rstrip
    Green: #{results.count('Green')}
    Amber: #{results.count('Amber')}
    Red: #{results.count('Red')}
    #{"Uncounted: #{uncounted}" if uncounted != 0}
  HEREDOC
end
