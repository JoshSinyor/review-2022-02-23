# frozen_string_literal: true

require 'counter'

describe 'total_results' do
  it 'counts a single result' do
    expect(total_results("Green")).to eq "Green: 1"
  end
end
