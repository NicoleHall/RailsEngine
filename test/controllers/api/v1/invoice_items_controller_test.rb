require 'test_helper'


class Api::V1::InvoiceItemsControllerTest < ActionController::TestCase

  test '#index' do

    get :index, format: :json
    invoice_items = JSON.parse(response.body)
    first_invoice_item = invoice_items.last
    assert_response :success
    assert_equal 20, first_invoice_item['id']
    assert_equal 1918, first_invoice_item['item_id']
    assert_equal 9, first_invoice_item['quantity']
    assert_equal "720.18", first_invoice_item['unit_price']
  end


  test '#show' do
    get :show, format: :json, id: 13
    invoice_item = JSON.parse(response.body)
    assert_response :success
    assert_equal 1921, invoice_item['item_id']
    assert_equal 4, invoice_item['quantity']
  end
end
