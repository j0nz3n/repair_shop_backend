require "rails_helper"

RSpec.describe RepairOrdersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/repair_orders").to route_to("repair_orders#index")
    end


    it "routes to #show" do
      expect(:get => "/repair_orders/1").to route_to("repair_orders#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/repair_orders").to route_to("repair_orders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/repair_orders/1").to route_to("repair_orders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/repair_orders/1").to route_to("repair_orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/repair_orders/1").to route_to("repair_orders#destroy", :id => "1")
    end

  end
end
