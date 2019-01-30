require 'httparty'
require 'json'

class MultiplePostcodeService

  include HTTParty

  base_uri 'https://api.postcodes.io'

  def multiple_postcode_request(postcodes_array)
    # use post instead of a get for multiple postcodes 
    @multiple_postcode_data = JSON.parse(self.class.post('/postcodes', body: {"postcodes" => postcodes_array}).body)
  end

  def retrieve_status_code 
    @multiple_postcode_data['status']
  end

  # def print_response
  #   p @multiple_postcode_data
  # end
end

# test = MultiplePostcodeService.new
# # putting the postcodes inside the array returns multiple postcodes and all the details for each
# test.multiple_postcode_request(["IG3 9JG", "M32 0JG", "NE30 1DP"])
# test.print_response