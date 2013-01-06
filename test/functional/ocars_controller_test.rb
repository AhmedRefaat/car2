require 'test_helper'

class OcarsControllerTest < ActionController::TestCase
  setup do
    @ocar = ocars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ocars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocar" do
    assert_difference('Ocar.count') do
      post :create, ocar: { body_style: @ocar.body_style, drive_type: @ocar.drive_type, engine_size: @ocar.engine_size, gearbox: @ocar.gearbox, image_url: @ocar.image_url, model: @ocar.model, oem: @ocar.oem, owner: @ocar.owner, performance: @ocar.performance, seat_material: @ocar.seat_material, telephone: @ocar.telephone, transmission: @ocar.transmission }
    end

    assert_redirected_to ocar_path(assigns(:ocar))
  end

  test "should show ocar" do
    get :show, id: @ocar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ocar
    assert_response :success
  end

  test "should update ocar" do
    put :update, id: @ocar, ocar: { body_style: @ocar.body_style, drive_type: @ocar.drive_type, engine_size: @ocar.engine_size, gearbox: @ocar.gearbox, image_url: @ocar.image_url, model: @ocar.model, oem: @ocar.oem, owner: @ocar.owner, performance: @ocar.performance, seat_material: @ocar.seat_material, telephone: @ocar.telephone, transmission: @ocar.transmission }
    assert_redirected_to ocar_path(assigns(:ocar))
  end

  test "should destroy ocar" do
    assert_difference('Ocar.count', -1) do
      delete :destroy, id: @ocar
    end

    assert_redirected_to ocars_path
  end
end
