class Admin::RolesController < Admin::ResourceController
  before_filter :set_format  
  before_filter :check_json_authenticity, :only => :index
  
  def index
    @roles = Role.all
    respond_with(@roles) do |format|
      format.json { render :json => @roles.map { |role| { 'id' => role.id, 'name' => role.name }} }.to_json
    end
  end
  
  private
  
  def set_format
    request.format ||= :json
  end
  
end