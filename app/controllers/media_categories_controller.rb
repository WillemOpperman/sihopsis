class MediaCategoriesController < ApplicationController
  before_action :set_media_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @media_categories = MediaCategory.all
    respond_with(@media_categories)
  end

  def show
    respond_with(@media_category)
  end

  def new
    @media_category = MediaCategory.new
    respond_with(@media_category)
  end

  def edit
  end

  def create
    @media_category = MediaCategory.new(media_category_params)
    @media_category.save
    respond_with(@media_category)
  end

  def update
    @media_category.update(media_category_params)
    respond_with(@media_category)
  end

  def destroy
    @media_category.destroy
    respond_with(@media_category)
  end

  private
    def set_media_category
      @media_category = MediaCategory.find(params[:id])
    end

    def media_category_params
      params.require(:media_category).permit(:uid, :code, :code_external, :name, :type_id, :parent_id, :g_l_acc_no_media_rev_by_media_type, :g_l_acc_no_media_billing_control, :g_l_acc_no_commission_revenue, :g_l_acc_no_commission_revenue_rebate_to_client, :g_l_acc_no_commission_to_associates_expense, :default_material_deadline_days_id, :default_cancellation_days_id, :colour, :default_d_p_i_e_i_s_service_prover_id, :eis_sync_date, :default_media_advert_source_id, :is_active)
    end
end
