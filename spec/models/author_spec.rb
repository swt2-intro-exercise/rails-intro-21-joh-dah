require 'rails_helper'

    RSpec.describe Author, type: :model do
        describe "Author model" do
            it "name and homepage shoud be set" do
                author = Author.new(first_name: "Hans", last_name: "Wurst", homepage: "urll")
                expect(author.first_name).to eq("Hans")
                expect(author.last_name).to eq("Wurst")
                expect(author.homepage).to eq("urll")
            end
            it "can return full name" do
                author = Author.new(first_name: "Hans", last_name: "Wurst", homepage: "urll")
                expect(author.name).to eq("Hans Wurst")
            end
        end
    end