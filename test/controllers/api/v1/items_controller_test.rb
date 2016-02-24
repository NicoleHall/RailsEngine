require 'test_helper'


class Api::V1::ItemsControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json
    items = JSON.parse(response.body)
    first_item = items.first

    assert_response :success
    assert_equal 'Item Rerum Ex', first_item['name']
    assert_equal 3, items.count
  end


  test '#show' do
    get :show, format: :json, id: 207
    item = JSON.parse(response.body )

    assert_response :success
    assert_equal "Item Rerum Ex", item["name"]
    assert_equal "324.27", item["unit_price"]
    assert_equal 11, item["merchant_id"]
  end
end
