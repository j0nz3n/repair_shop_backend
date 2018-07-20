class RepairOrdersController < ApplicationController
  before_action :set_repair_order, only: [:show, :update, :destroy]

  # GET /repair_orders
  def index
    @repair_orders = RepairOrder.all

    render json: @repair_orders
  end

  # GET /repair_orders/1
  def show
    render json: @repair_order
  end

  # POST /repair_orders
  def create
    @repair_order = RepairOrder.new(repair_order_params)

    if @repair_order.save
      render json: @repair_order, status: :created, location: @repair_order
    else
      render json: @repair_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /repair_orders/1
  def update
    if @repair_order.update(repair_order_params)
      render json: @repair_order
    else
      render json: @repair_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /repair_orders/1
  def destroy
    @repair_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_order
      @repair_order = RepairOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def repair_order_params
      params.require(:repair_order).permit(:device_id_id, :user_id_id, :date_in, :date_due, :date_out, :complaint, :diagnosis, :repair_action, :user_rating)
    end
end
