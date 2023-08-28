class JournalsController < ApplicationController

	def new
		@journal = Journal.new
		@hournals = Journal.all
	end


	def create
		@journal = Journal.new(journal_params)
		if @journal.save
			redirect_to new_journal_path 
		end
	end

	def destroy
		if @journal.destroy
			redirect_to journals_path
		end 
	end

	def remove_all
		Journal.all.destroy
	end

	private
	def journal_params
		params.require(:journal).permit(:title, :description)
	end
end
