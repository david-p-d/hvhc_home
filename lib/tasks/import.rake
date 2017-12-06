require 'csv'
namespace :import do
  desc "imports data from a csv file"
  task data: :environment do

    CSV.foreach("app/assets/csv/submissions.csv") do |row|

      OrganizationID=row[0]
      SubmissionType=row[1]
      SubmissionSubType=row[2]
      submissionStartDate=row[3]
      submissionEndDate=row[4]
      FileSpecVersion=row[5]
      resubmitNumber=row[6].to_i
      Load_YN=row[7]
      Load_Status=row[8]
      InsertDateTime=row[9].to_time
      SubmissionComments=row[10]
      ASC_Cohorts=row[11]

      #TableSubmission is the name of the model
        TableSubmission.create(OrganizationID: OrganizationID, SubmissionType: SubmissionType, SubmissionSubType: SubmissionSubType, submissionStartDate: submissionStartDate, submissionEndDate: submissionEndDate, FileSpecVersion: FileSpecVersion, resubmitNumber: resubmitNumber, Load_YN: Load_YN, Load_Status:Load_Status, InsertDateTime: InsertDateTime, SubmissionComments:SubmissionComments, ASC_Cohorts:ASC_Cohorts)
p row.inspect

end
end
end
