require "rails_helper"

RSpec.describe ClassmatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/classmates").to route_to("classmates#index")
    end

    it "routes to #new" do
      expect(:get => "/classmates/new").to route_to("classmates#new")
    end

    it "routes to #show" do
      expect(:get => "/classmates/1").to route_to("classmates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/classmates/1/edit").to route_to("classmates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/classmates").to route_to("classmates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/classmates/1").to route_to("classmates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/classmates/1").to route_to("classmates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/classmates/1").to route_to("classmates#destroy", :id => "1")
    end

  end
end
