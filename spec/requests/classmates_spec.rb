require 'rails_helper'

RSpec.describe "Classmates", type: :request do
  describe "GET /classmates" do
    it "works! (now write some real specs)" do
      get classmates_path
      expect(response).to have_http_status(200)
    end
  end
end
