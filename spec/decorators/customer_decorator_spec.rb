require 'spec_helper'

describe CustomerDecorator do
  let(:customer) { Customer.new.extend CustomerDecorator }
  subject { customer }
  it { should be_a Customer }
end
