require 'spec_helper'

describe WelcomeController do

  it "write log" do
    expect {
      get "index",{aaa: "bbb"}
    }.to change(Log,:count).by(1)
    l = Log.first
    expect(l.login).to be_nil
    expect(l.ip).to eq "0.0.0.0"
    expect(l.url).to eq "http://test.host/?aaa=bbb"
    para = {"aaa" => "bbb","controller" => "welcome","action" => "index"}
    expect(l.param).to eq para.inspect
  end

  context "exist session[:user]" do
    it "session[:user] is string" do
      session[:user] = "user"
      get "index"
      l = Log.first
      expect(l.login).to eq "user"
    end
    it "session[:user] is integer" do
      session[:user] = 11
      get "index"
      l = Log.first
      expect(l.login).to be_nil
    end
    context "session[:user] is hash" do
      it "exist 'code' key" do
        session[:user] = {"code" => "user1"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user1"
      end
      it "exist :code key" do
        session[:user] = {:code => "user11"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user11"
      end
      it "exist 'name' key" do
        session[:user] = {"name" => "user2"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user2"
      end
      it "exist :name key" do
        session[:user] = {:name => "user22"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user22"
      end
      it "exist 'login' key" do
        session[:user] = {"login" => "user3"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user3"
      end
      it "exist :name key" do
        session[:user] = {:login => "user33"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user33"
      end
      it "exist 'login_name' key" do
        session[:user] = {"login_name" => "user4"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user4"
      end
      it "exist :name key" do
        session[:user] = {:login_name => "user44"}
        get "index"
        l = Log.first
        expect(l.login).to eq "user44"
      end
    end
  end

end
