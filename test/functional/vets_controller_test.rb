require 'test_helper'

class VetsControllerTest < ActionController::TestCase
  setup do
    @vet = vets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vet" do
    assert_difference('Vet.count') do
      post :create, vet: { address: @vet.address, city: @vet.city, degree: @vet.degree, name: @vet.name, state: @vet.state, years: @vet.years, zip: @vet.zip }
    end

    assert_redirected_to vet_path(assigns(:vet))
  end

  test "should show vet" do
    get :show, id: @vet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vet
    assert_response :success
  end

  test "should update vet" do
    put :update, id: @vet, vet: { address: @vet.address, city: @vet.city, degree: @vet.degree, name: @vet.name, state: @vet.state, years: @vet.years, zip: @vet.zip }
    assert_redirected_to vet_path(assigns(:vet))
  end

  test "should destroy vet" do
    assert_difference('Vet.count', -1) do
      delete :destroy, id: @vet
    end

    assert_redirected_to vets_path
  end
end
