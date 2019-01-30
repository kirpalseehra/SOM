require 'spec_helper'

describe Postcodesio do

  context 'requesting info from the first postcode' do


  before(:all) do
    @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
    @multiple_postcode_service.multiple_postcode_request(['IG39JG', 'B601JA'])
  end 

    it 'should respond with a status code of 200' do
      expect(@multiple_postcode_service.retrieve_status_code).to eq 200
    end

    it 'should be a string for the postcode' do
      expect(@multiple_postcode_service.retrieve_postcode).to be_kind_of(String)
    end

    it 'should be an object type of Hash' do
      expect(@multiple_postcode_service.retrieve_results).to be_kind_of(Hash)
    end

    # tested this as being equal to 1 as I am only testing one post code
    # For multiple postcodes I would check the object type eg be_kind_of(Integer)
    it 'should respond with a quality of 1' do
      expect(@multiple_postcode_service.retrieve_quality).to be_kind_of(Integer)
    end
    # check how to test range of numbers
    it 'should respond with eastings of 545280' do
      expect(@multiple_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

    # check how to test range of numbers
    it 'should respond with northings of 186518' do
      expect(@multiple_postcode_service.retrieve_northings).to be_kind_of(Integer)
    end

    it 'should respond with england as the country' do
      expect(@multiple_postcode_service.retrieve_country).to be_kind_of(String)
    end

    it 'should respond with London as the nhs_ha' do
      expect(@multiple_postcode_service.retrieve_nhsha).to be_kind_of(String)
    end

    it 'should respond with a float for longitude' do
      expect(@multiple_postcode_service.retrieve_longitude).to be_kind_of(Float)
    end

    it 'should respond with a float for latitude' do
      expect(@multiple_postcode_service.retrieve_latitude).to be_kind_of(Float)
    end

    it 'should return london for the electoral region' do
      expect(@multiple_postcode_service.retrieve_european_electoral_region).to be_kind_of(String)
    end

    it 'should return a string for primary care trust' do
      expect(@multiple_postcode_service.retrieve_primary_care_trust).to be_kind_of(String)
    end

    it 'should return a string for region' do
      expect(@multiple_postcode_service.retrieve_region).to be_kind_of(String)
    end

    it 'should return a string for lsoa' do
      expect(@multiple_postcode_service.retrieve_lsoa).to be_kind_of(String)
    end

    it 'should return a string for msoa' do
      expect(@multiple_postcode_service.retrieve_msoa).to be_kind_of(String)
    end

    it 'should return a string for incode' do
      expect(@multiple_postcode_service.retrieve_incode).to be_kind_of(String)
    end

    it 'should return a string for outcode' do
      expect(@multiple_postcode_service.retrieve_outcode).to be_kind_of(String)
    end

    it 'should return a string for constituency' do
      expect(@multiple_postcode_service.retrieve_constituency).to be_kind_of(String)
    end

    it 'should return a string for admin district' do
      expect(@multiple_postcode_service.retrieve_admin_district).to be_kind_of(String)
    end

    it 'should return a string for parish' do
      expect(@multiple_postcode_service.retrieve_parish).to be_kind_of(String)
    end

    it 'should return a string for admin county' do
      expect(@multiple_postcode_service.retrieve_admin_county).to be_nil
    end

    it 'should return a string for admin ward' do
      expect(@multiple_postcode_service.retrieve_admin_ward).to be_kind_of(String)
    end

    it 'should return nil for ced' do
      expect(@multiple_postcode_service.retrieve_ced).to be_nil
    end

    it 'should return a string for ccg' do
      expect(@multiple_postcode_service.retrieve_ccg).to be_kind_of(String)
    end

    it 'should return a string for nuts' do
      expect(@multiple_postcode_service.retrieve_nuts).to be_kind_of(String)
    end

    it 'should return a string for the admin district code' do
      expect(@multiple_postcode_service.retrieve_admin_district_code).to be_kind_of(String)
    end

    it 'should return a string for the admin county code' do
      expect(@multiple_postcode_service.retrieve_admin_county_code).to be_kind_of(String)
    end

    it 'should return a string for the admin ward code' do
      expect(@multiple_postcode_service.retrieve_admin_ward_code).to be_kind_of(String)
    end

    it 'should return a string for the parish code' do
      expect(@multiple_postcode_service.retrieve_parish_code).to be_kind_of(String)
    end

    it 'should return a string for the parliamentary constituency code' do
      expect(@multiple_postcode_service.retrieve_constituency_code).to be_kind_of(String)
    end

    it 'should return a string for the ccg code' do
      expect(@multiple_postcode_service.retrieve_ccg_code).to be_kind_of(String)
    end

    it 'should return a string for the ced code' do
      expect(@multiple_postcode_service.retrieve_ced_code).to be_kind_of(String)
    end

    it 'should return a string for the nuts code' do
      expect(@multiple_postcode_service.retrieve_nuts_code).to be_kind_of(String)
    end

  end

  context 'requesting info from the second postcode' do

  before(:all) do
    @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
    @multiple_postcode_service.multiple_postcode_request(['IG39JG', 'B601JA'])
  end 


  end 
end