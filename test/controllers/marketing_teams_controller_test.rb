require 'test_helper'

class MarketingTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketing_team = marketing_teams(:one)
  end

  test "should get index" do
    get marketing_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_marketing_team_url
    assert_response :success
  end

  test "should create marketing_team" do
    assert_difference('MarketingTeam.count') do
      post marketing_teams_url, params: { marketing_team: { coolness: @marketing_team.coolness, name: @marketing_team.name } }
    end

    assert_redirected_to marketing_team_url(MarketingTeam.last)
  end

  test "should show marketing_team" do
    get marketing_team_url(@marketing_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketing_team_url(@marketing_team)
    assert_response :success
  end

  test "should update marketing_team" do
    patch marketing_team_url(@marketing_team), params: { marketing_team: { coolness: @marketing_team.coolness, name: @marketing_team.name } }
    assert_redirected_to marketing_team_url(@marketing_team)
  end

  test "should destroy marketing_team" do
    assert_difference('MarketingTeam.count', -1) do
      delete marketing_team_url(@marketing_team)
    end

    assert_redirected_to marketing_teams_url
  end
end
