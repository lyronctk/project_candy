require 'test_helper'

class CreateOrdersControllerTest < ActionController::TestCase
  setup do
    @create_order = create_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_order" do
    assert_difference('CreateOrder.count') do
      post :create, create_order: {  }
    end

    assert_redirected_to create_order_path(assigns(:create_order))
  end

  test "should show create_order" do
    get :show, id: @create_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_order
    assert_response :success
  end

  test "should update create_order" do
    patch :update, id: @create_order, create_order: {  }
    assert_redirected_to create_order_path(assigns(:create_order))
  end

  test "should destroy create_order" do
    assert_difference('CreateOrder.count', -1) do
      delete :destroy, id: @create_order
    end

    assert_redirected_to create_orders_path
  end
end
