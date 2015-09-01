require 'rails_helper'

RSpec.describe ApiController, type: :controller do

  describe "GET /list_catalog" do
    before do
      create_list :catalog, 3
    end
    it "return list of catalogs" do
      get :list_catalog, format: :json
      expect(response).to be_successful
    end
  end

  describe "GET /list_product" do
    let(:catalog){create :catalog}
    before do
      create_list :product, 3, catalog: catalog
    end
    it "return list of catalogs" do
      get :list_product, catalog_id: catalog.id, format: :json
      expect(response).to be_successful
    end
  end
end
