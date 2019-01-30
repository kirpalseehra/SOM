require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'

class Postcodesio

  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcode_service
    MultiplePostcodeService.new
  end
end

postcode_api = Postcodesio.new

# puts postcode_api.single_postcode_service.single_postcode_request('IG39JG')

# puts postcode_api.multiple_postcode_service.multiple_postcode_request(['IG3 9JG', 'NE30 1DP'])
