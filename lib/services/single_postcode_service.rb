require 'httparty'
require 'json'

class SinglePostcodeService

  include HTTParty

  # include the base URI
  base_uri 'https://api.postcodes.io'

  def single_postcode_request(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def retrieve_status_code
    @single_postcode_data['status']
  end

  def print_results 
    p @single_postcode_data
  end

  def retrieve_results
    @single_postcode_data['result']
  end

  def retrieve_postcode
    retrieve_results['postcode']
  end

  def retrieve_quality
    retrieve_results['quality']
  end

  #test the range of this 
  def retrieve_eastings
    retrieve_results['eastings']
  end
  #test the range of this
  def retrieve_northings 
    retrieve_results['northings']
  end

  def retrieve_country
    retrieve_results['country']
  end

  def retrieve_nhsha
    retrieve_results['nhs_ha']
  end

  def retrieve_longitude 
    retrieve_results['longitude']
  end

  def retrieve_latitude 
    retrieve_results['latitude']
  end

  def retrieve_european_electoral_region
    retrieve_results['european_electoral_region']
  end

  def retrieve_primary_care_trust
    retrieve_results['primary_care_trust']
  end

  def retrieve_region
    retrieve_results['region']
  end

  def retrieve_lsoa
    retrieve_results['lsoa']
  end

  def retrieve_msoa
    retrieve_results['msoa']
  end

  def retrieve_incode
    retrieve_results['incode']
  end

  def retrieve_outcode
    retrieve_results['outcode']
  end

  def retrieve_constituency
    retrieve_results['parliamentary_constituency']
  end

  def retrieve_admin_district
    retrieve_results['admin_district']
  end

  def retrieve_parish
    retrieve_results['parish']
  end

  def retrieve_admin_county
    retrieve_results['admin_county']
  end

  def retrieve_admin_ward
    retrieve_results['admin_ward']
  end

  def retrieve_ced
    retrieve_results['ced']
  end

  def retrieve_ccg
    retrieve_results['ccg']
  end

  def retrieve_nuts
    retrieve_results['nuts']
  end

  def retrieve_codes
    retrieve_results['codes']
  end

  def retrieve_admin_district_code
    retrieve_codes['admin_district']
  end

  def retrieve_admin_county_code
    retrieve_codes['admin_county']
  end

  def retrieve_admin_ward_code
    retrieve_codes['admin_ward']
  end

  def retrieve_parish_code
    retrieve_codes['parish']
  end

  def retrieve_constituency_code
    retrieve_codes['parliamentary_constituency']
  end

  def retrieve_ccg_code
    retrieve_codes['ccg']
  end

  def retrieve_ced_code
    retrieve_codes['ced']
  end

  def retrieve_nuts_code
    retrieve_codes['nuts']
  end

end

test = SinglePostcodeService.new
test.single_postcode_request('IG39JG')
p test.print_results
