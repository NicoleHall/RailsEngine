require 'test_helper'

class Api::V1::TransactionsFinderControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, result: "success"
    transactions = JSON.parse(response.body)

    assert_response :success
    assert_equal 3, transactions.count
    assert_equal 279, transactions.first["id"]
    assert_equal 246, transactions.first["invoice_id"]
    assert_equal 282, transactions.last["id"]
    assert_equal 248, transactions.last["invoice_id"]
  end

  test '#show' do
    get :show, format: :json, result: "failed"
    transaction = JSON.parse(response.body)
    assert_response :success
    assert_equal 281, transaction["id"]
  end
end
