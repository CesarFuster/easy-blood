require 'test_helper'

class CampaignCreatorTest < ActiveSupport::TestCase
  test "3 cpoints exist" do
    assert Cpoint.count, 3
  end
end
