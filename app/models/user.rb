class User < ApplicationRecord

	has_many :user_tasks
  	has_many :tasks, through: :user_tasks

  	def initialize(args={})
		@first_name = args[:first_name] || ""
		@last_name = args[:last_name] || ""
		@role = args[:role] || ""
		@description = args[:description] || ""
		@date_of_birth = args[:date_of_birth] || ""
		@joining_date = args[:joining_date] || ""
	end

	def save
	end

end
