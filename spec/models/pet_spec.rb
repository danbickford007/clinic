require "spec_helper"

describe Pet do
  
  let(:cust_1) { Customer.create(:name=>'bill') } 
  let(:cust_2) { Customer.create(:name=>'Nick') }
  let(:pet) { Pet.create(:name=>'zilla', :customer_id=>cust_1.id) }
  let(:customers) { [cust_1, cust_2] }

  describe 'finding pets from customer' do

    it 'should return all pets from first customer in collection' do
      Pet.from_customer(customers).should == [pet]
    end

    it 'should return empty array if no pets exist for customer' do
      Pet.from_customer([cust_2]).should == []
    end

  end

  describe 'not finding pets due to no customers existing yet' do

    it 'should return empty array if no customers' do
      Pet.from_customer([]).should == []
    end

  end

end
