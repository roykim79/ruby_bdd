require 'rspec'
require'pingpong'
require 'pry'

describe 'Fixnum#pingpong' do
  it "counts from 1 to a given integer" do
    expect(2.pingpong).to eq([1, 2])
  end

  it "replaces every 3 with the string 'ping'" do
    expect(3.pingpong).to eq([1, 2, 'ping'])
  end

  it "replaces every 5 with the string 'pong'" do
    expect(5.pingpong).to eq([1, 2, 'ping', 4, 'pong'])
  end

  it "replaces every number that is divisible by 5 and 3 with the string 'pingpong'" do
    expect(15.pingpong).to eq([1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'pingpong'])
  end
end
