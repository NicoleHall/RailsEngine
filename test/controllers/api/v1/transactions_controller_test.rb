require 'test_helper'

class Api::V1::TransactionsControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json
    transactions = JSON.parse(response.body)

    assert_response :success
    assert_equal 4, transactions.count
  end


  test '#show' do
    get :show, format: :json, id: 281
    transaction = JSON.parse(response.body)

    assert_response :success
    assert_equal 248, transaction["invoice_id"]
    assert_equal "failed", transaction["result"]
  end
end
