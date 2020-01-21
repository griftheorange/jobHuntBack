class JobStateSerializer < ActiveModel::Serializer
  attributes :id, :status
  belongs_to :job
  belongs_to :user
end
