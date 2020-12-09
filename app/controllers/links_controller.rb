class LinksController < ApplicationController
	def index
		@links = Link.all
	end
	def new
	end
	def create
    	link = Link.new(link_params)
    	if link.save
    		redirect_to "/links"
    	else
    		flash[:errors] = link.errors.full_messages
    		redirect_to "/links/new"
    	end
    end
    def show
    	@link = Link.find(params[:id])
    	
    end

    def edit
    	@link = Link.find(params[:id])
    end
    def update
    	link = Link.find(params[:id])
    	if link.update(link_params)
    		redirect_to "/links"
    	else
    		flash[:errors] = link.errors.full_messages
    		redirect_to "/links/#{link.id}/edit"
    	end
    end
    def destroy
    	link = Link.find(params[:id])
    	link.destroy
    	
    	redirect_to "/links"
    end

    private
    def link_params
    	params.require(:link).permit(:title, :url)
    end
end



