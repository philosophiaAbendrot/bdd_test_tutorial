require "rails_helper"

RSpec.feature "Listing Articles" do
  # create two articles to display
  before do
    @article1 = Article.create(title: "The first article", body: "Lorem ipsum dolor sit amet, consectetur.")
    @article2 = Article.create(title: "The first article", body: "Body of second article.")
  end
  # list the two articles
  # expect both article titles and bodies to be present
  scenario "A user has no articles" do
    Article.delete_all
    visit "/"
    expect(page).not_to have_content(@article1.title)
    expect(page).not_to have_content(@article1.body)

    expect(page).not_to have_content(@article2.title)
    expect(page).not_to have_content(@article2.body)

    expect(page).not_to have_link(@article1.title)
    expect(page).not_to have_link(@article2.title)

    within("h1#no-articles") do
      expect(page).to have_content("No Articles Created")
    end
  end

end
