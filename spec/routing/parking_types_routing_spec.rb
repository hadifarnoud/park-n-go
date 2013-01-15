require "spec_helper"

describe ParkingTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/parking_types").should route_to("parking_types#index")
    end

    it "routes to #new" do
      get("/parking_types/new").should route_to("parking_types#new")
    end

    it "routes to #show" do
      get("/parking_types/1").should route_to("parking_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parking_types/1/edit").should route_to("parking_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parking_types").should route_to("parking_types#create")
    end

    it "routes to #update" do
      put("/parking_types/1").should route_to("parking_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parking_types/1").should route_to("parking_types#destroy", :id => "1")
    end

  end
end
