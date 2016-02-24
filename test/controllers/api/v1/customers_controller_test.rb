require 'test_helper'


class Api::V1::CustomersControllerTest < ActionController::TestCase

  test '#index' do

    get :index, format: :json
    customers = JSON.parse(response.body)
    first_customer = customers.last
    assert_response :success
    assert_equal 'Nicole', first_customer['first_name']
    assert_equal 'Murray', first_customer['last_name']
  end


  test '#show' do

    get :show, format: :json, id: 56
    customer = JSON.parse(response.body, symbolize_names: true)
    assert_response :success
    assert_equal "Eleazar", customer[:first_name]
    assert_equal "Wisozk", customer[:last_name]

  end
end
