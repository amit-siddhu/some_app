require 'test_helper'

class AnEntitiesControllerTest < ActionController::TestCase
  setup do
    @an_entity = an_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:an_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create an_entity" do
    assert_difference('AnEntity.count') do
      post :create, an_entity: { attr1: @an_entity.attr1, attr2: @an_entity.attr2 }
    end

    assert_redirected_to an_entity_path(assigns(:an_entity))
  end

  test "should show an_entity" do
    get :show, id: @an_entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @an_entity
    assert_response :success
  end

  test "should update an_entity" do
    put :update, id: @an_entity, an_entity: { attr1: @an_entity.attr1, attr2: @an_entity.attr2 }
    assert_redirected_to an_entity_path(assigns(:an_entity))
  end

  test "should destroy an_entity" do
    assert_difference('AnEntity.count', -1) do
      delete :destroy, id: @an_entity
    end

    assert_redirected_to an_entities_path
  end
end
