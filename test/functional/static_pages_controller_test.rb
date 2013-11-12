require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get quote" do
    get :quote
    assert_response :success
  end

  test "should get offsite_media_storage" do
    get :offsite_media_storage
    assert_response :success
  end

  test "should get data_protection" do
    get :data_protection
    assert_response :success
  end

  test "should get document_management" do
    get :document_management
    assert_response :success
  end

  test "should get online_backup_and_recovery" do
    get :online_backup_and_recovery
    assert_response :success
  end

  test "should get courier" do
    get :courier
    assert_response :success
  end

  test "should get record_storage" do
    get :record_storage
    assert_response :success
  end

  test "should get secure_shredding" do
    get :secure_shredding
    assert_response :success
  end

  test "should get knowledge_base" do
    get :knowledge_base
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
