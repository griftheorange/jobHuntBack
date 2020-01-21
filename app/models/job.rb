class Job < ApplicationRecord
    has_many :job_states
    has_many :users, through: :job_states
end
