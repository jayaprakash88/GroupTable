class SecretCodeController < ApplicationController
  load_and_authorize_resource
  def index
    @codes=SecretCode.all.order("id")
  end
  
  def create
    code = SecretCode.generate_code(code_params)
    redirect_to secret_code_index_path
  end
  
  private
  def code_params
    params.require(:code).permit(:limit)
  end
end
