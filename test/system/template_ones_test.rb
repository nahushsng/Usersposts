require "application_system_test_case"

class TemplateOnesTest < ApplicationSystemTestCase
  setup do
    @template_one = template_ones(:one)
  end

  test "visiting the index" do
    visit template_ones_url
    assert_selector "h1", text: "Template ones"
  end

  test "should create template one" do
    visit template_ones_url
    click_on "New template one"

    fill_in "String input 1", with: @template_one.string_input_1
    click_on "Create Template one"

    assert_text "Template one was successfully created"
    click_on "Back"
  end

  test "should update Template one" do
    visit template_one_url(@template_one)
    click_on "Edit this template one", match: :first

    fill_in "String input 1", with: @template_one.string_input_1
    click_on "Update Template one"

    assert_text "Template one was successfully updated"
    click_on "Back"
  end

  test "should destroy Template one" do
    visit template_one_url(@template_one)
    click_on "Destroy this template one", match: :first

    assert_text "Template one was successfully destroyed"
  end
end
