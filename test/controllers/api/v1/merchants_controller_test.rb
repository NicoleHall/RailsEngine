require 'test_helper'

class Api::V1::MerchantsControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json
    merchants = JSON.parse(response.body)

    assert_response :success
    assert_equal "Cummings-Thiel", merchants.first["name"]
  end


  test '#show' do
    get :show, format: :json, id: 4
    merchant = JSON.parse(response.body)

    assert_response :success
    assert_equal "Cummings-Thiel", merchant["name"]
  end
end
