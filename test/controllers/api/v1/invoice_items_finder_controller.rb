require 'test_helper'


class Api::V1::InvoiceItemsFinderControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, invoice_id: 3
    invoice_items = JSON.parse(response.body)
    assert_response :success
    assert_equal 2, invoice_items.count
    assert_equal 13, invoice_items.first["id"]
    assert_equal 20, invoice_items.last["id"]
  end

  test '#show' do
    get :show, format: :json, item_id: 1918
    invoice_item = JSON.parse(response.body)
    assert_response :success
    assert_equal 20, invoice_item["id"]
  end
end
