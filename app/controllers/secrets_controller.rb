class SecretsController < ApplicationController
  before_action :require_login

  def show
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
