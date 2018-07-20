require 'rails_helper'

RSpec.describe "RepairOrders", type: :request do
  describe "GET /repair_orders" do
    it "works! (now write some real specs)" do
      get repair_orders_path
      expect(response).to have_http_status(200)
    end
  end
end
