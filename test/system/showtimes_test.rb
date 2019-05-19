require "application_system_test_case"

class ShowtimesTest < ApplicationSystemTestCase
  setup do
    @showtime = showtimes(:one)
  end

  test "visiting the index" do
    visit showtimes_url
    assert_selector "h1", text: "Showtimes"
  end

  test "creating a Showtime" do
    visit showtimes_url
    click_on "New Showtime"

    fill_in "References", with: @showtime.references
    fill_in "Tickets sold", with: @showtime.tickets_sold
    fill_in "Time", with: @showtime.time
    click_on "Create Showtime"

    assert_text "Showtime was successfully created"
    click_on "Back"
  end

  test "updating a Showtime" do
    visit showtimes_url
    click_on "Edit", match: :first

    fill_in "References", with: @showtime.references
    fill_in "Tickets sold", with: @showtime.tickets_sold
    fill_in "Time", with: @showtime.time
    click_on "Update Showtime"

    assert_text "Showtime was successfully updated"
    click_on "Back"
  end

  test "destroying a Showtime" do
    visit showtimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Showtime was successfully destroyed"
  end
end
