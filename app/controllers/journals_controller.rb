class JournalsController < ApplicationController

	def new
		@journal = Journal.new
		@journals = Journal.all
	end

	def journal_params
		params.require(:journal).permit(:title, :description)
	end

	def create
		@journal = Journal.new(journal_params)
		if @journal.save
			redirect_to new_journal_path 
		end
	end





end
