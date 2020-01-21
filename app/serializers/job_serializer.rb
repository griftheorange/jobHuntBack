class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :company, :post_date, :description
  has_many :job_states
  has_many :users, through: :job_states
end
