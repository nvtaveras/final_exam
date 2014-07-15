class Teacher < ActiveRecord::Base
	
	has_many :subjects, dependent: :destroy
	validates :name, presence: true
	accepts_nested_attributes_for :subjects
	 # reject_if: proc { |attributes| attributes['subject_name'].blank? }

end
