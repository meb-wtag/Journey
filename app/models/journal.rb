class Journal < ApplicationRecord

	belongs_to :users

	has_many :journal_entries

end
