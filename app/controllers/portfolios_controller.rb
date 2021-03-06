class PortfoliosController < ApplicationController
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

	layout "portfolio"
	
	access all: [:show, :index, :javascript], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

	def index
		@portfolio_items = Portfolio.by_position
	end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render :index
  end
	
	def javascript
		@javascript_portfolio_items = Portfolio.javascript
	end

	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end

	def show
	end

	def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully created.' }
      else
        format.html { render :new }
      end
    end
	end

	def edit
	end
	
	def update
			respond_to do |format|
				if @portfolio_item.update(portfolio_params)
					format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
				else
					format.html { render :edit }
				end
			end
	end
	
	def destroy
		@portfolio_item.destroy
		
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully deleted.' }
    end
	end
	
	private
	# Use callbacks to share common setup or constraints between actions.
	def set_portfolio
		@portfolio_item = Portfolio.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def portfolio_params
		params.require(:portfolio).permit(:title, 
																			:subtitle, 
																			:main_image,
																			:thumb_image,
																			:body, 
																			technologies_attributes: [:id, :name, :_destroy]
																			)
	end

end
