class CreateTableSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :table_submissions do |t|
      t.string :OrganizationID
      t.string :SubmissionType
      t.string :SubmissionSubType
      t.string :submissionStartDate
      t.string :submissionEndDate
      t.string :FileSpecVersion
      t.integer :resubmitNumber
      t.string :Load_YN
      t.string :Load_Status
      t.datetime :InsertDateTime
      t.text :SubmissionComments
      t.string :ASC_Cohorts
        t.timestamps
    end
  end
end
