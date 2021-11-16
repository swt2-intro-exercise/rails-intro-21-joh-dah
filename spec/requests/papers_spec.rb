 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/papers", type: :request do
  # Paper. As you add validations to Paper, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
      get papers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      paper = Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
      get paper_url(paper)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_paper_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      paper = Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
      get edit_paper_url(paper)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Paper" do
        expect {
          post papers_url, params: { paper: {title: 'a', venue:'b', year: 1} }
        }.to change(Paper, :count).by(1)
      end

      it "redirects to the created paper" do
        post papers_url, params: { paper: {title: 'a', venue:'b', year: 1} }
        expect(response).to redirect_to(paper_url(Paper.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Paper" do
        expect {
          post papers_url, params: {paper: {title: 'Titelo', venue: 'Venu', year: 'Eins'} }
        }.to change(Paper, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post papers_url, params: {paper: {title: 'Titelo', venue: 'Venu', year: 'Eins'} }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested paper" do
        paper = Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
        patch paper_url(paper), params: { paper: {title: 'a', venue:'b', year: 1} }
        paper.reload
        expect(paper.title).to eq('a')
      end

      it "redirects to the paper" do
        paper = Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
        patch paper_url(paper), params: { paper: {title: 'a', venue:'b', year: 1} }
        paper.reload
        expect(response).to redirect_to(paper_url(paper))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        paper = Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
        patch paper_url(paper), params: { paper: {title: 'Titelo', venue: 'Venu', year: 'Eins'} }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested paper" do
      paper = Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
      expect {
        delete paper_url(paper)
      }.to change(Paper, :count).by(-1)
    end

    it "redirects to the papers list" do
      paper = Paper.create!(title: 'Titelo', venue: 'Venu', year:1999)
      delete paper_url(paper)
      expect(response).to redirect_to(papers_url)
    end
  end
end
