require 'test_helper'


class Api::V1::InvoicesFinderControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, customer_id: 55
    invoices = JSON.parse(response.body)
    assert_response :success
    assert_equal 4, invoices.count
    assert_equal 246, invoices.first["id"]
    assert_equal 249, invoices.last["id"]
  end

  test '#show' do
    get :show, format: :json, item_id: 1918
    invoice = JSON.parse(response.body)
    assert_response :success
    assert_equal 246, invoice["id"]
  end
end
