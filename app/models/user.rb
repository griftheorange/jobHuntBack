class User < ApplicationRecord
    has_secure_password
    has_many :job_states
    has_many :jobs, through: :job_states
end
