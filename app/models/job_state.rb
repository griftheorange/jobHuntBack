class JobState < ApplicationRecord
    belongs_to :user
    belongs_to :job

    # has_one :jobs
    # has_many :companies, through: :jobs
end
