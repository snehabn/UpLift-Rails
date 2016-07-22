class OrganizationsController < ApplicationController
	def index
		@organizations = Organization.all
	end

	def new
		@organization = Organization.new
	end

	def create
		@neworganization = Organization.new(organization_params)
		if @organization.save
			redirect_to @organization
		else
			redirect_to root_path
		end
	end

	def show
		@organization = Organization.find_by(id: params[:id])
		causes = Cause.where(causable_id: params[:id], causable_type: 'Organization')
		events = Event.where(organization_id: params[:id])
		redirect_to organization_path
	end

	# def edit
	# end

	# def update
	# 	@organization = Organization.find_by(id: params[:id])
	# end

	private
	def org_params
		params.permit(:name, :email, :zip, :mission_statement, :phone_number, :website_url, :password_digest, :image_url)
	end
end
