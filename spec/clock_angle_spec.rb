require 'rspec'
require 'clock_angle'

describe 'String#clock_angle' do
  it 'returns 0 if the hour hand and minute hand are in the same position' do
    expect('12:00'.clock_angle).to eq(0)
  end

  it 'returns the angle between the hour hand and minute hand' do
    expect('6:00'.clock_angle).to eq(180)
  end

  it 'returns the angle between the hour hand and minute hand' do
    expect('1:00'.clock_angle).to eq(30)
  end

  it 'returns the angle between the hour hand and minute hand' do
    expect('12:30'.clock_angle).to eq(165)
  end
end
