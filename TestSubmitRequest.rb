require 'net/http'
require "uri"

# Constants

TestSubmitRequest_URL = "https://www.nexternal.com/shared/xml/testsubmit.rest"
TestSubmitRequest_XML = <<-xml
<?xml version="1.0" encoding="utf-8" ?>
<TestSubmitRequest>
  <Credentials>
    <AccountName>ACCOUNTNAME</AccountName>
    <UserName>USERNAME</UserName>
    <Password>PASSWORD</Password>
  </Credentials>
</TestSubmitRequest>
xml

# Step 1: submit TestSubmitRequest

uri = URI.parse TestSubmitRequest_URL
request = Net::HTTP::Post.new uri.path
request.body = TestSubmitRequest_XML
request.content_type = 'application/xml'
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
response = http.request(request)
p response.body



git status
ruby git status
