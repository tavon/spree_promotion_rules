require 'spec_helper'

describe Promotion::Rules::Role do
  let(:rule) { Promotion::Rules::Role.new }

  context "#eligible?(order)" do
    let(:order) { Order.new }

    it "should be eligible if roles are not provided" do
      roles = mock("roles", :none? => true)
      rule.stub(:roles => roles)

      rule.should be_eligible(order)
    end

    it "should be eligible if roles include role placing the order" do
      role = mock_model(Role)
      user = mock_model(User)
      roles = [role, mock_model(Role)]
      roles.stub(:none? => false)
      rule.stub(:roles => roles)
      user.stub(:roles => [role])
      order.stub(:user => user)

      rule.should be_eligible(order)
    end

    it "should not be eligible if role placing the order is not listed" do
      user = mock_model(User)
      roles = [mock_model(Role), mock_model(Role)]
      roles.stub(:none? => false)
      rule.stub(:roles => roles)
      user.stub(:roles => [mock_model(Role)])
      order.stub(:user => user)

      rule.should_not be_eligible(order)
    end
  end
end
