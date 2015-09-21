require "rails_helper"

RSpec.describe "Book Features", type: :feature do
  it "allows user to create a new book" do
    create :author, first_name: "Madeleine", last_name: "L'Engle"

    visit books_path
    click_on "New Book"

    fill_in "Title", with: "A wrinkle in time"
    fill_in "Isbn", with: "9780786273355"
    fill_in "Description", with: %q(It was a dark and stormy night; Meg Murry, her small brother Charles Wallace, and her mother had come down to the kitchen for a midnight snack when they were upset by the arrival of a most disturbing stranger.

    "Wild nights are my glory," the unearthly stranger told them. "I just got caught in a downdraft and blown off course. Let me sit down for a moment, and then I'll be on my way. Speaking of ways, by the way, there is such a thing as a tesseract."

    A tesseract (in case the reader doesn't know) is a wrinkle in time. To tell more would rob the reader of the enjoyment of Miss L'Engle's unusual book. A Wrinkle in Time, winner of the Newbery Medal in 1963, is the story of the adventures in space and time of Meg, Charles Wallace, and Calvin O'Keefe (athlete, student, and one of the most popular boys in high school). They are in search of Meg's father, a scientist who disappeared while engaged in secret work for the government on the tesseract problem.

    A Wrinkle in Time is the winner of the 1963 Newbery Medal.)
    fill_in "Publisher", with: "Square Fish"
    fill_in "Published on", with: "1962-01-01"
    check "Madeleine L'Engle"

    click_on "Create Book"

    visit root_path

    expect(page).to have_content "A wrinkle in time"
    expect(page).to have_content "Square Fish"

    first(:link, "A wrinkle in time").click

    expect(page).to have_content "Madeleine L'Engle"
    expect(page).to have_content "9780786273355"
    expect(page).to have_content "winner of the Newbery Medal in 1963"
  end
end

