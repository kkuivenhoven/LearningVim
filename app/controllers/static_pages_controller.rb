class StaticPagesController < ApplicationController
  def home
		@sales = Sale.all
  end

  def help
  end
end
