class LockSessionController < ApplicationController

  layout 'lock_session'

  def index

    respond_to do |format|
      format.html
    end
  end

  def unlock

    redirect_to root_path
  end
end