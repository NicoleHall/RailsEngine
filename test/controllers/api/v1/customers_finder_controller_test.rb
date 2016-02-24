require 'test_helper'


class Api::V1::CustomersFinderControllerTest < ActionController::TestCase

  test '#index' do
    get :index, format: :json, customer_params: 'Alysha'
    customers = JSON.parse(response.body)
    assert_response :success
    assert_equal 1, customers.count

  end


  # test '#show' do
  #
  #   get :show, format: :json, id: 56
  #   customer = JSON.parse(response.body, symbolize_names: true)
  #   assert_response :success
  #   assert_equal "Eleazar", customer[:first_name]
  #   assert_equal "Wisozk", customer[:last_name]
  #
  # end
end
