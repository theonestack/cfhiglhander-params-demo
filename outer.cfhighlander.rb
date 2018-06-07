# Outer component
CfhighlanderTemplate do
    Component 'nameproducer'
    Component 's3' do
      parameter name: 'BucketName2', value: 'nameproducer.BucketName'
      parameter name: 'BucketName3', value: 'mybucket.example.cfhighlander.org'
    end
end
