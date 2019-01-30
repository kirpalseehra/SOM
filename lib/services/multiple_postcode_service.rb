require 'httparty'
require 'json'

class MultiplePostcodeService

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def multiple_postcode_request(postcodes_array)
    # use post instead of a get for multiple postcodes 
    @multiple_postcode_data = JSON.parse(self.class.post('/postcodes', body: {"postcodes" => postcodes_array}).body)
  end

  def retrieve_results
    @multiple_postcode_data['result']
  end

  def retrieve_array_postcode
    retrieve_results[0]
  end 

  def retrieve_first_query
    retrieve_array_postcode['query']
  end

  def retrieve_first_results
    retrieve_array_postcode['result']
  end

  


end

test = MultiplePostcodeService.new
# putting the postcodes inside the array returns multiple postcodes and all the details for each
test.multiple_postcode_request(["IG3 9JG", "M32 0JG", "NE30 1DP"])
p test.retrieve_first_results