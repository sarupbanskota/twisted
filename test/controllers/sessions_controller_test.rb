require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @session = sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session" do
    assert_difference('Session.count') do
      post :create, session: { accepted: @session.accepted, class: @session.class, confirmed: @session.confirmed, confirmed: @session.confirmed, date: @session.date, description: @session.description, duration: @session.duration, headline: @session.headline, slot: @session.slot, subline: @session.subline, track: @session.track, user_id: @session.user_id }
    end

    assert_redirected_to session_path(assigns(:session))
  end

  test "should show session" do
    get :show, id: @session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session
    assert_response :success
  end

  test "should update session" do
    patch :update, id: @session, session: { accepted: @session.accepted, class: @session.class, confirmed: @session.confirmed, confirmed: @session.confirmed, date: @session.date, description: @session.description, duration: @session.duration, headline: @session.headline, slot: @session.slot, subline: @session.subline, track: @session.track, user_id: @session.user_id }
    assert_redirected_to session_path(assigns(:session))
  end

  test "should destroy session" do
    assert_difference('Session.count', -1) do
      delete :destroy, id: @session
    end

    assert_redirected_to sessions_path
  end
end
