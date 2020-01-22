class CompanySerializer < ActiveModel::Serializer
  attributes :id,:username,:password_digest

  has_many :jobs
  has_many :job_states,through: :jobs

end
