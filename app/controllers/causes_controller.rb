class CausesController < ApplicationController
  def index
    @causes = Cause.all
  end

  def show
    @cause = Cause.find_by(id: params[:id])
    @organizations = Cause.where(id: params[:id], causable_type: 'Organization').map do |cause| cause.causable end
    @users = Cause.where(id: params[:id], causable_type: 'User').map do |cause| cause.causable end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def cause_params
    params.permit(:name, :causable_id, :causable_type)
  end

end
