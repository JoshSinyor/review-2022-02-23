# frozen_string_literal: true

require 'counter'

describe 'total_results' do
  it 'counts a single result' do
    expect(total_results('Green')).to eq "Green: 1\nAmber: 0\nRed: 0"
  end

  it 'counts multiple results of a single colour' do
    expect(total_results('Green, Green')).to eq "Green: 2\nAmber: 0\nRed: 0"
  end

  it 'counts multiple results of multiple colours' do
    expect(total_results('Green, Amber, Red')).to eq "Green: 1\nAmber: 1\nRed: 1"
  end
end
