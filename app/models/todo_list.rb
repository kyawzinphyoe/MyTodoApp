class TodoList < ApplicationRecord

	scope :completed, -> do
		where(completed: true)
	end

	def total_items
		total_items = TodoList.count
	end

	def completed_items
		completed_items = TodoList.completed.count
	end

	def percent_complete
		return 0 if total_items == 0
		(100 * completed_items.to_f / total_items).round(1)
	end

	def status
		case percent_complete.to_i
		when 0
			'Not started'
		when 100
			'Complete'
		else
			'In progress'
		end	
	end

	def badge_color
		case percent_complete.to_i
		when 0
			'dark'
		when 100
			'info'
		else
			'primary'
		end
	end
end
