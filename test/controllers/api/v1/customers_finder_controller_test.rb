require 'test_helper'


class Api::V1::CustomersFinderControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, last_name: 'Murray'
    customer = JSON.parse(response.body)
    assert_response :success
    assert_equal 2, customer.count
    assert_equal "Alysha", customer.first["first_name"]
    assert_equal "Nicole", customer.last["first_name"]
  end

  test '#show' do
    get :show, format: :json, id: 55
    customer = JSON.parse(response.body)
    assert_response :success
    assert_equal "Alysha", customer["first_name"]
  end
end
