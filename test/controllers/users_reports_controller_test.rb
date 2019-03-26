require 'test_helper'

class UsersReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_report = users_reports(:one)
  end

  test "should get index" do
    get users_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_users_report_url
    assert_response :success
  end

  test "should create users_report" do
    assert_difference('UsersReport.count') do
      post users_reports_url, params: { users_report: { canal: @users_report.canal, lat: @users_report.lat, local: @users_report.local, long: @users_report.long, user_id: @users_report.user_id } }
    end

    assert_redirected_to users_report_url(UsersReport.last)
  end

  test "should show users_report" do
    get users_report_url(@users_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_report_url(@users_report)
    assert_response :success
  end

  test "should update users_report" do
    patch users_report_url(@users_report), params: { users_report: { canal: @users_report.canal, lat: @users_report.lat, local: @users_report.local, long: @users_report.long, user_id: @users_report.user_id } }
    assert_redirected_to users_report_url(@users_report)
  end

  test "should destroy users_report" do
    assert_difference('UsersReport.count', -1) do
      delete users_report_url(@users_report)
    end

    assert_redirected_to users_reports_url
  end
end
