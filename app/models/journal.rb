class Journal < ApplicationRecord

	has_many :journal_entries

	validates :title, presence: true
	validates :description, presence: true



end
