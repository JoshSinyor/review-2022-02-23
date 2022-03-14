# frozen_string_literal: true

require 'counter'

describe 'total_results' do
  it 'counts a single result (first acceptance criterion)' do
    expect(total_results('Green')).to eq "Green: 1\nAmber: 0\nRed: 0"
  end

  it 'counts multiple results of a single colour (second acceptance criterion)' do
    expect(total_results('Green, Green')).to eq "Green: 2\nAmber: 0\nRed: 0"
  end

  it 'counts multiple results of multiple colours (third acceptance criterion)' do
    expect(total_results('Green, Amber, Red')).to eq "Green: 1\nAmber: 1\nRed: 1"
  end

  it 'counts uncounted results (fourth acceptance criterion)' do
    expect(total_results('Green, Yellow')).to eq "Green: 1\nAmber: 0\nRed: 0\nUncounted: 1"
  end

  it 'raises an error when not supplied with a String (fifth acceptance criterion)' do
    expect do
      total_results(%w[Green Amber Red])
    end.to raise_error('Please input a string of comma-separated values.')
  end
end
