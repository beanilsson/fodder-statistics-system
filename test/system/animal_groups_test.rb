require "application_system_test_case"

class AnimalGroupsTest < ApplicationSystemTestCase
  setup do
    @animal_group = animal_groups(:one)
  end

  test "visiting the index" do
    visit animal_groups_url
    assert_selector "h1", text: "Animal Groups"
  end

  test "creating a Animal group" do
    visit animal_groups_url
    click_on "New Animal Group"

    fill_in "Amount", with: @animal_group.amount
    fill_in "Name", with: @animal_group.name
    click_on "Create Animal group"

    assert_text "Animal group was successfully created"
    click_on "Back"
  end

  test "updating a Animal group" do
    visit animal_groups_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @animal_group.amount
    fill_in "Name", with: @animal_group.name
    click_on "Update Animal group"

    assert_text "Animal group was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal group" do
    visit animal_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal group was successfully destroyed"
  end
end
