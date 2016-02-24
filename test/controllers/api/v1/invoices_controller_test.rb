require 'test_helper'


class Api::V1::InvoicesControllerTest < ActionController::TestCase

  test '#index' do

    get :index, format: :json
    invoice = JSON.parse(response.body)
    first_invoice = invoice.first
    assert_response :success
    assert_equal 246, first_invoice['id']
    assert_equal "shipped", first_invoice['status']
    assert_equal 55, first_invoice['customer_id']
    assert_equal 4, first_invoice['merchant_id']
  end


  test '#show' do
    get :show, format: :json, id: 248
    invoice = JSON.parse(response.body)
    assert_response :success
    assert_equal 248, invoice['id']
    assert_equal "shipped", invoice['status']
    assert_equal 11, invoice['merchant_id']
  end
end
