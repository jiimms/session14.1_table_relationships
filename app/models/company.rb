class Company < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	has_many :employees, dependent: :destroy
	accepts_nested_attributes_for :employees,reject_if: :all_blank, allow_destroy: true
end
