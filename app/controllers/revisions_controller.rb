class RevisionsController < ApplicationController
  before_action :set_revision, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @revisions = Revision.all
    respond_with(@revisions)
  end

  def show
    respond_with(@revision)
  end

  def new
    @revision = Revision.new
    respond_with(@revision)
  end

  def edit
  end

  def create
    @revision = Revision.new(revision_params)
    @revision.save
    respond_with(@revision)
  end

  def update
    @revision.update(revision_params)
    respond_with(@revision)
  end

  def destroy
    @revision.destroy
    respond_with(@revision)
  end

  private
    def set_revision
      @revision = Revision.find(params[:id])
    end

    def revision_params
      params.require(:revision).permit(:uid, :code, :company_division_id, :parent_id, :parent_entity_view_id, :change_h_t_m_l_report, :change_x_m_l, :creation_source_id, :eis_sync_date)
    end
end
