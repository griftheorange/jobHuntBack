class User < ApplicationRecord
    has_secure_password
    has_many :job_states
    has_many :jobs, through: :job_states

    validates :username, uniqueness: {message: "must be unique"}
    validates :username, presence: {message: "can't be blank"}
    validates :password, presence: {message: "can't be blank"}
end
