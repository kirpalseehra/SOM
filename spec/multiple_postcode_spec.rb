require 'spec_helper'

describe Postcodesio do

  context 'requesting info from the first postcode' do

  before(:all) do
    @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
    @multiple_postcode_service.multiple_postcode_request(['IG39JG', 'B601JA'])
  end

  it 'should show the first query' do
    expect(@multiple_postcode_service.retrieve_first_query).to be_kind_of(String)
  end

 
  end

  context 'requesting info from the second postcode' do

  before(:all) do
    @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
    @multiple_postcode_service.multiple_postcode_request(['IG39JG', 'B601JA'])
  end 

  it 'should show the second query' do
    expect(@multiple_postcode_service.retrieve_first_query).to be_kind_of(String)
  end


  end 
end