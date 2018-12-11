require "application_system_test_case"

class AssetsTest < ApplicationSystemTestCase
  setup do
    @asset = assets(:one)
  end

  test "visiting the index" do
    visit assets_url
    assert_selector "h1", text: "Assets"
  end

  test "creating a Asset" do
    visit assets_url
    click_on "New Asset"

    fill_in "Asset", with: @asset.asset_id
    fill_in "Description", with: @asset.description
    fill_in "Eff", with: @asset.eff_id
    fill_in "Html string", with: @asset.html_string
    fill_in "Title", with: @asset.title
    fill_in "Ver nbr", with: @asset.ver_nbr
    click_on "Create Asset"

    assert_text "Asset was successfully created"
    click_on "Back"
  end

  test "updating a Asset" do
    visit assets_url
    click_on "Edit", match: :first

    fill_in "Asset", with: @asset.asset_id
    fill_in "Description", with: @asset.description
    fill_in "Eff", with: @asset.eff_id
    fill_in "Html string", with: @asset.html_string
    fill_in "Title", with: @asset.title
    fill_in "Ver nbr", with: @asset.ver_nbr
    click_on "Update Asset"

    assert_text "Asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset" do
    visit assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset was successfully destroyed"
  end
end
