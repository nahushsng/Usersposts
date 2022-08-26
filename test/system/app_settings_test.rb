require "application_system_test_case"

class AppSettingsTest < ApplicationSystemTestCase
  setup do
    @app_setting = app_settings(:one)
  end

  test "visiting the index" do
    visit app_settings_url
    assert_selector "h1", text: "App settings"
  end

  test "should create app setting" do
    visit app_settings_url
    click_on "New app setting"

    fill_in "Tab name", with: @app_setting.tab_name
    fill_in "Theme name", with: @app_setting.theme_name
    click_on "Create App setting"

    assert_text "App setting was successfully created"
    click_on "Back"
  end

  test "should update App setting" do
    visit app_setting_url(@app_setting)
    click_on "Edit this app setting", match: :first

    fill_in "Tab name", with: @app_setting.tab_name
    fill_in "Theme name", with: @app_setting.theme_name
    click_on "Update App setting"

    assert_text "App setting was successfully updated"
    click_on "Back"
  end

  test "should destroy App setting" do
    visit app_setting_url(@app_setting)
    click_on "Destroy this app setting", match: :first

    assert_text "App setting was successfully destroyed"
  end
end
