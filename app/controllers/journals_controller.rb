class JournalsController < ApplicationController


	def new
		@journal = Journal.new
		@journals = Journal.all
	end


	def create
		@journal = Journal.new(journal_params)
		if @journal.save
			redirect_to journals_path 
		end
	end

	def destroy
		@journal = Journal.find(params[:id])
		@journal.destroy

		redirect_to journals_path
	end

	def remove_all
		Journal.all.destroy
	end

	def show
    @journal = Journal.find(params[:id])
  	end

	private
	def journal_params
		params.require(:journal).permit(:title, :description)
	end
end
