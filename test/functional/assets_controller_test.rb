require 'test_helper'

class AssetsControllerTest < ActionController::TestCase
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asset" do
    assert_difference('Asset.count') do
      post :create, asset: { C3: @asset.C3, C4: @asset.C4, Client: @asset.Client, Date_In: @asset.Date_In, Day_One: @asset.Day_One, Description: @asset.Description, Media_Code: @asset.Media_Code, Return_Date: @asset.Return_Date }
    end

    assert_redirected_to asset_path(assigns(:asset))
  end

  test "should show asset" do
    get :show, id: @asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asset
    assert_response :success
  end

  test "should update asset" do
    put :update, id: @asset, asset: { C3: @asset.C3, C4: @asset.C4, Client: @asset.Client, Date_In: @asset.Date_In, Day_One: @asset.Day_One, Description: @asset.Description, Media_Code: @asset.Media_Code, Return_Date: @asset.Return_Date }
    assert_redirected_to asset_path(assigns(:asset))
  end

  test "should destroy asset" do
    assert_difference('Asset.count', -1) do
      delete :destroy, id: @asset
    end

    assert_redirected_to assets_path
  end
end
