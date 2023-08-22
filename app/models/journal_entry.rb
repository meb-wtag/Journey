class JournalEntry < ApplicationRecord

	belongs_to :journals

	has_one :goals

end
