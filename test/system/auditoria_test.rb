require "application_system_test_case"

class AuditoriaTest < ApplicationSystemTestCase
  setup do
    @auditorium = auditoria(:one)
  end

  test "visiting the index" do
    visit auditoria_url
    assert_selector "h1", text: "Auditoria"
  end

  test "creating a Auditorium" do
    visit auditoria_url
    click_on "New Auditorium"

    fill_in "Capacity", with: @auditorium.capacity
    fill_in "Title", with: @auditorium.title
    click_on "Create Auditorium"

    assert_text "Auditorium was successfully created"
    click_on "Back"
  end

  test "updating a Auditorium" do
    visit auditoria_url
    click_on "Edit", match: :first

    fill_in "Capacity", with: @auditorium.capacity
    fill_in "Title", with: @auditorium.title
    click_on "Update Auditorium"

    assert_text "Auditorium was successfully updated"
    click_on "Back"
  end

  test "destroying a Auditorium" do
    visit auditoria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auditorium was successfully destroyed"
  end
end
