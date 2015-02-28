class CreationSourcesController < ApplicationController
  before_action :set_creation_source, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @creation_sources = CreationSource.all
    respond_with(@creation_sources)
  end

  def show
    respond_with(@creation_source)
  end

  def new
    @creation_source = CreationSource.new
    respond_with(@creation_source)
  end

  def edit
  end

  def create
    @creation_source = CreationSource.new(creation_source_params)
    @creation_source.save
    respond_with(@creation_source)
  end

  def update
    @creation_source.update(creation_source_params)
    respond_with(@creation_source)
  end

  def destroy
    @creation_source.destroy
    respond_with(@creation_source)
  end

  private
    def set_creation_source
      @creation_source = CreationSource.find(params[:id])
    end

    def creation_source_params
      params.require(:creation_source).permit(:uid, :code, :name, :is_user, :is_user_import, :is_system_import)
    end
end
