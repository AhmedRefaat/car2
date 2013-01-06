require 'test_helper'

class NcarsControllerTest < ActionController::TestCase
  setup do
    @ncar = ncars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ncars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ncar" do
    assert_difference('Ncar.count') do
      post :create, ncar: { body_style: @ncar.body_style, drive_type: @ncar.drive_type, engine_size: @ncar.engine_size, gearbox: @ncar.gearbox, model: @ncar.model, oem: @ncar.oem, performance: @ncar.performance, seat_material: @ncar.seat_material, transmission: @ncar.transmission }
    end

    assert_redirected_to ncar_path(assigns(:ncar))
  end

  test "should show ncar" do
    get :show, id: @ncar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ncar
    assert_response :success
  end

  test "should update ncar" do
    put :update, id: @ncar, ncar: { body_style: @ncar.body_style, drive_type: @ncar.drive_type, engine_size: @ncar.engine_size, gearbox: @ncar.gearbox, model: @ncar.model, oem: @ncar.oem, performance: @ncar.performance, seat_material: @ncar.seat_material, transmission: @ncar.transmission }
    assert_redirected_to ncar_path(assigns(:ncar))
  end

  test "should destroy ncar" do
    assert_difference('Ncar.count', -1) do
      delete :destroy, id: @ncar
    end

    assert_redirected_to ncars_path
  end
end
