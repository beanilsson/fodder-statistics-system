require "application_system_test_case"

class ConsumptionsTest < ApplicationSystemTestCase
  setup do
    @consumption = consumptions(:one)
  end

  test "visiting the index" do
    visit consumptions_url
    assert_selector "h1", text: "Consumptions"
  end

  test "creating a Consumption" do
    visit consumptions_url
    click_on "New Consumption"

    fill_in "Amount", with: @consumption.amount
    fill_in "Animal group", with: @consumption.animal_group
    fill_in "Batch", with: @consumption.batch
    fill_in "Date", with: @consumption.date
    click_on "Create Consumption"

    assert_text "Consumption was successfully created"
    click_on "Back"
  end

  test "updating a Consumption" do
    visit consumptions_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @consumption.amount
    fill_in "Animal group", with: @consumption.animal_group
    fill_in "Batch", with: @consumption.batch
    fill_in "Date", with: @consumption.date
    click_on "Update Consumption"

    assert_text "Consumption was successfully updated"
    click_on "Back"
  end

  test "destroying a Consumption" do
    visit consumptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consumption was successfully destroyed"
  end
end
