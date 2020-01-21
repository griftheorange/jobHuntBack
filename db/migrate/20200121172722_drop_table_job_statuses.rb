class DropTableJobStatuses < ActiveRecord::Migration[6.0]
  def change
    drop_table :job_statuses
  end
end
