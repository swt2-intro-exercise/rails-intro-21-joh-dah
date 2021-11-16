describe "Author index page", type: :feature do
    before do
        visit authors_path
    end
    it "should exist at 'authors_path' and render withour error" do
    end
    it "shoud have link to new author page" do
        expect(page).to have_link 'New', href: new_author_path
    end
    it "shoud have table with name and homepage" do
        expect(page).to have_table
    end
    it "should be deletable" do
        # Author.all.each do |author|
        #     author.delete
        # end
        author = Author.create(first_name: "Hans", last_name: "Wurst", homepage: "urll")
        expect(Author.count).to eq 1
        author.delete
        expect(Author.count).to eq 0
    end
  end
  