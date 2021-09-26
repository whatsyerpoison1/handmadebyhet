class MacramesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @macrames = Macrame.all
  end

  def show
    @macrame = Macrame.find(params[:id])
  end
end
