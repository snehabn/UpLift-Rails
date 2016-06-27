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
    @cause = Cause.new
  end

  def create
    @cause = Cause.create(cause_params)
  end

  def edit

  end

  def update
  end

  def destroy
    @cause = Cause.find(params[:id])
    @cause.destroy
    redirect_to root_path
  end

  private
  def cause_params
    params.permit(:name, :causable_id, :causable_type)
  end

end
