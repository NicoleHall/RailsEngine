require 'test_helper'


class Api::V1::Customers::TransactionsControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, customer_id: 55
    assert_response :success
    alishas_transactions = JSON.parse(response.body)

    assert_equal 4, alishas_transactions.size
    assert_equal 279, alishas_transactions.first["id"]
    assert_equal 246, alishas_transactions.first["invoice_id"]
    assert_equal "4233739940920683",  alishas_transactions.first["credit_card_number"]
    assert_equal "success", alishas_transactions.first["result"]


  end

  end
