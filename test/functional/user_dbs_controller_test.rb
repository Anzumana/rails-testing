require 'test_helper'

class UserDbsControllerTest < ActionController::TestCase
  setup do
    @user_db = user_dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_db" do
    assert_difference('UserDb.count') do
      post :create, user_db: { idnumber: @user_db.idnumber, p1: @user_db.p1, p3: @user_db.p3 }
    end

    assert_redirected_to user_db_path(assigns(:user_db))
  end

  test "should show user_db" do
    get :show, id: @user_db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_db
    assert_response :success
  end

  test "should update user_db" do
    put :update, id: @user_db, user_db: { idnumber: @user_db.idnumber, p1: @user_db.p1, p3: @user_db.p3 }
    assert_redirected_to user_db_path(assigns(:user_db))
  end

  test "should destroy user_db" do
    assert_difference('UserDb.count', -1) do
      delete :destroy, id: @user_db
    end

    assert_redirected_to user_dbs_path
  end
end
