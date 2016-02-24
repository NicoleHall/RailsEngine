require 'test_helper'


class Api::V1::MerchantsFinderControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, id: 4
    merchants = JSON.parse(response.body)

    assert_response :success
    assert_equal 1, merchants.count
    assert_equal 4, merchants.first["id"]
  end

  test '#show' do
    get :show, format: :json, name: "Pollich and Sons"
    merchant = JSON.parse(response.body)
    assert_response :success
    assert_equal 11, merchant["id"]
  end
end
