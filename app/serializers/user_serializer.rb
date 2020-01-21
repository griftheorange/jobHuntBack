class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest
  has_many :job_states
  has_many :jobs, through: :job_states
end
