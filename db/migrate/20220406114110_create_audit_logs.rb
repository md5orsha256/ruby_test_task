class CreateAuditLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :audit_logs do |t|
      t.string :type
      t.string :user
      t.json :payload

      t.timestamps
    end
  end
end
