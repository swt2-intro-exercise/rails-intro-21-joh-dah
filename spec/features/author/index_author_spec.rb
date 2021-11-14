describe "Author index page", type: :feature do
    it "should exist at 'authors_path' and render withour error" do
      visit authors_path
    end
    it "shoud have link to new author page" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end
    it "shoud have table with name and homepage" do
        visit authors_path
        expect(page).to have_table
    end
  end
  