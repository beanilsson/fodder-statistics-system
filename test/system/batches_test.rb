require "application_system_test_case"

class BatchesTest < ApplicationSystemTestCase
  setup do
    @batch = batches(:one)
  end

  test "visiting the index" do
    visit batches_url
    assert_selector "h1", text: "Batches"
  end

  test "creating a Batch" do
    visit batches_url
    click_on "New Batch"

    fill_in "Amount", with: @batch.amount
    fill_in "Foddertype", with: @batch.fodderType
    fill_in "Name", with: @batch.name
    check "Refillable" if @batch.refillable
    fill_in "Unit", with: @batch.unit
    check "Unknownamount" if @batch.unknownAmount
    click_on "Create Batch"

    assert_text "Batch was successfully created"
    click_on "Back"
  end

  test "updating a Batch" do
    visit batches_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @batch.amount
    fill_in "Foddertype", with: @batch.fodderType
    fill_in "Name", with: @batch.name
    check "Refillable" if @batch.refillable
    fill_in "Unit", with: @batch.unit
    check "Unknownamount" if @batch.unknownAmount
    click_on "Update Batch"

    assert_text "Batch was successfully updated"
    click_on "Back"
  end

  test "destroying a Batch" do
    visit batches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Batch was successfully destroyed"
  end
end
