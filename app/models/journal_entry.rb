class JournalEntry < ApplicationRecord

	belongs_to :journal

	has_many :goals


	validates :title, presence: true
	validates :content, presence: true

	attachment :file
	
end
