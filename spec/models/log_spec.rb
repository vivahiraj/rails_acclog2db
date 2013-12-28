require 'spec_helper'

describe Log do
  it "use Log model" do
    l = Log.create(login: "user",ip: "10.0.0.1",url: "http;//test.com",param: "sample")
    expect(l.login).to eq "user"
    expect(l.ip).to eq "10.0.0.1"
    expect(l.url).to eq "http;//test.com"
    expect(l.param).to eq "sample"
    expect(l.created_at).not_to be_nil
    expect(l.updated_at).not_to be_nil
  end
end
