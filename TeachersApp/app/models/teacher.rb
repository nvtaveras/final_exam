class Teacher < ActiveRecord::Base

	has_many :subjects, dependent: :destroy
	accepts_nested_attributes_for :subjects
	 # reject_if: proc { |attributes| attributes['subject_name'].blank? }

	def active_subjects
		subjects.select { |s| s.active == true }.length
	end

end
