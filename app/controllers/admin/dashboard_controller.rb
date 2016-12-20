class Admin::DashboardController < ApplicationController
  def index
  	@orders = Order.all
  end

  def admin_delete
  	item = LineItem.find_by(id: params[:id])
    item.product.update(quantity: (item.product.quantity + item.quantity))
    item.destroy
    flash[:notice] = "Item was successfully deleted"
  	redirect_to admin_dashboard_index_path
  end
end
