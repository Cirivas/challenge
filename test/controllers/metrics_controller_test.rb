require 'test_helper'

class MetricsControllerTest < ActionDispatch::IntegrationTest
  test 'should post create' do
    post metrics_create_url
    assert_response :success
  end
end
