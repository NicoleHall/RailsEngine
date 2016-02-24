require 'test_helper'


class Api::V1::ItemsFinderControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, name: "Item Nihil Et"
    items = JSON.parse(response.body)
    assert_response :success
    assert_equal 2, items.count
    assert_equal 209, items.first["id"]
    assert_equal 2484, items.last["id"]
  end

  test '#show' do
    get :show, format: :json, name: "Item Rerum Ex"
    invoice = JSON.parse(response.body)
    assert_response :success
    assert_equal 207, invoice["id"]
  end
end
