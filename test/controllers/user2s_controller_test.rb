require 'test_helper'

class User2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user2 = user2s(:one)
  end

  test "should get index" do
    get user2s_url
    assert_response :success
  end

  test "should get new" do
    get new_user2_url
    assert_response :success
  end

  test "should create user2" do
    assert_difference('User2.count') do
      post user2s_url, params: { user2: { confirmation_sent_at: @user2.confirmation_sent_at, confirmation_token: @user2.confirmation_token, confirmed_at: @user2.confirmed_at, current_sign_in_at: @user2.current_sign_in_at, current_sign_in_ip: @user2.current_sign_in_ip, email: @user2.email, encrypted_password: @user2.encrypted_password, failed_attempts: @user2.failed_attempts, last_sign_in_at: @user2.last_sign_in_at, last_sign_in_ip: @user2.last_sign_in_ip, locked_at: @user2.locked_at, name: @user2.name, remember_created_at: @user2.remember_created_at, reset_password_sent_at: @user2.reset_password_sent_at, reset_password_token: @user2.reset_password_token, role_id: @user2.role_id, sign_in_count: @user2.sign_in_count, unconfirmed_email: @user2.unconfirmed_email, unlock_token: @user2.unlock_token } }
    end

    assert_redirected_to user2_url(User2.last)
  end

  test "should show user2" do
    get user2_url(@user2)
    assert_response :success
  end

  test "should get edit" do
    get edit_user2_url(@user2)
    assert_response :success
  end

  test "should update user2" do
    patch user2_url(@user2), params: { user2: { confirmation_sent_at: @user2.confirmation_sent_at, confirmation_token: @user2.confirmation_token, confirmed_at: @user2.confirmed_at, current_sign_in_at: @user2.current_sign_in_at, current_sign_in_ip: @user2.current_sign_in_ip, email: @user2.email, encrypted_password: @user2.encrypted_password, failed_attempts: @user2.failed_attempts, last_sign_in_at: @user2.last_sign_in_at, last_sign_in_ip: @user2.last_sign_in_ip, locked_at: @user2.locked_at, name: @user2.name, remember_created_at: @user2.remember_created_at, reset_password_sent_at: @user2.reset_password_sent_at, reset_password_token: @user2.reset_password_token, role_id: @user2.role_id, sign_in_count: @user2.sign_in_count, unconfirmed_email: @user2.unconfirmed_email, unlock_token: @user2.unlock_token } }
    assert_redirected_to user2_url(@user2)
  end

  test "should destroy user2" do
    assert_difference('User2.count', -1) do
      delete user2_url(@user2)
    end

    assert_redirected_to user2s_url
  end
end
