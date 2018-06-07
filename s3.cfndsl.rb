CloudFormation do
    Condition 'AlwaysFalse', FnEquals('true','false')
    S3_Bucket :resourcetovalidateproperly do
      Condition 'AlwaysFalse'
    end

end
