class Company < ApplicationRecord
    has_many :jobs
    has_many :job_states,through: :jobs
end
