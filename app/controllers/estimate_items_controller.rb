class EstimateItemsController < ApplicationController
  before_action :set_estimate_item, only: [:show, :edit, :update, :destroy]

  def index
    @estimate_items = EstimateItem.all
  end

  def show
  end

  def new
    @estimate_item = EstimateItem.new
  end

  def edit
  end

  def create
    @estimate_item = EstimateItem.new(estimate_item_params)
    @estimate_item.estimate_id = params[:estimate_id]

    respond_to do |format|
      if @estimate_item.save
        format.json { render 'show' }
        format.html { redirect_to @estimate_item, notice: 'Estimate item was successfully created.' }
      else
        render action: 'new'
      end
    end
  end

  def update
    respond_to do |format|
      if @estimate_item.update(estimate_item_params)
        format.json { render :show }
        format.html { redirect_to @estimate_item, notice: 'Estimate item was successfully updated.' }
      else
        render action: 'edit'
      end
    end
  end

  def destroy
    @estimate_item.destroy
    respond_to do |format|
      format.json { head :no_content }
      format.html { redirect_to estimate_items_url, notice: 'Estimate item was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estimate_item
      @estimate_item = EstimateItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estimate_item_params
      params.require(:estimate_item).permit(:estimate_id, :title, :price, :order)
    end
end
