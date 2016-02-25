require 'test_helper'


class Api::V1::Customers::TransactionsControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, customer_id: 55
    assert_response :success
    alisha = JSON.parse(response.body)

 
    alisha.transactions
    require 'pry'; binding.pry
  end

  end
