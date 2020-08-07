class SecretsController < ApplicationController
  before_action :require_login

  def show
    #return guard: unless session includes :user_id we return an error 
    #return head(:forbidden) unless session.include? :user_id
   # @document = Document.find(params[:id])
  end

  private
  def require_login
    unless session.include? :name
      redirect_to :login
    end
  end
end
