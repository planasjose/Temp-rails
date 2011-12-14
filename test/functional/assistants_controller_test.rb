require 'test_helper'

class AssistantsControllerTest < ActionController::TestCase
  setup do
    @assistant = assistants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistant" do
    assert_difference('Assistant.count') do
      post :create, assistant: @assistant.attributes
    end

    assert_redirected_to assistant_path(assigns(:assistant))
  end

  test "should show assistant" do
    get :show, id: @assistant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistant.to_param
    assert_response :success
  end

  test "should update assistant" do
    put :update, id: @assistant.to_param, assistant: @assistant.attributes
    assert_redirected_to assistant_path(assigns(:assistant))
  end

  test "should destroy assistant" do
    assert_difference('Assistant.count', -1) do
      delete :destroy, id: @assistant.to_param
    end

    assert_redirected_to assistants_path
  end
end
