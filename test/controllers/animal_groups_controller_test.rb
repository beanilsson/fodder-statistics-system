require 'test_helper'

class AnimalGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_group = animal_groups(:one)
  end

  test "should get index" do
    get animal_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_group_url
    assert_response :success
  end

  test "should create animal_group" do
    assert_difference('AnimalGroup.count') do
      post animal_groups_url, params: { animal_group: { amount: @animal_group.amount, name: @animal_group.name } }
    end

    assert_redirected_to animal_group_url(AnimalGroup.last)
  end

  test "should show animal_group" do
    get animal_group_url(@animal_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_group_url(@animal_group)
    assert_response :success
  end

  test "should update animal_group" do
    patch animal_group_url(@animal_group), params: { animal_group: { amount: @animal_group.amount, name: @animal_group.name } }
    assert_redirected_to animal_group_url(@animal_group)
  end

  test "should destroy animal_group" do
    assert_difference('AnimalGroup.count', -1) do
      delete animal_group_url(@animal_group)
    end

    assert_redirected_to animal_groups_url
  end
end
