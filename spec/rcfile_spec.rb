require 'spec_helper'

describe Rcfile do
  it 'has a version number' do
    expect(Rcfile::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
