class JournalEntry < ApplicationRecord

	belongs_to :journal

	has_many :goals
	
end
