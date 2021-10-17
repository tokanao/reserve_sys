require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { addr1: @customer.addr1, addr2: @customer.addr2, addr3: @customer.addr3, birth: @customer.birth, created_at: @customer.created_at, email: @customer.email, first_kana: @customer.first_kana, first_name: @customer.first_name, gender: @customer.gender, id: @customer.id, last_kana: @customer.last_kana, last_name: @customer.last_name, tel1: @customer.tel1, tel2: @customer.tel2, tel3: @customer.tel3, updated_at: @customer.updated_at, zip1: @customer.zip1, zip2: @customer.zip2 } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { addr1: @customer.addr1, addr2: @customer.addr2, addr3: @customer.addr3, birth: @customer.birth, created_at: @customer.created_at, email: @customer.email, first_kana: @customer.first_kana, first_name: @customer.first_name, gender: @customer.gender, id: @customer.id, last_kana: @customer.last_kana, last_name: @customer.last_name, tel1: @customer.tel1, tel2: @customer.tel2, tel3: @customer.tel3, updated_at: @customer.updated_at, zip1: @customer.zip1, zip2: @customer.zip2 } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
