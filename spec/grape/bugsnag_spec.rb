require 'spec_helper'

class ErrApp
  class << self
    attr_accessor :error, :format

    def call(env)
      throw error: error
    end
  end
end

describe Grape::Bugsnag do
  let!(:app) do
    Rack::Builder.app do
      use Grape::Middleware::Error
      run ErrApp
    end
  end

  before do
    instance_of(Grape::Middleware::Error).rescuable? { true }
  end

  it "notifies exceptions through Bugsnag" do
    mock(Bugsnag).notify(anything)
    ErrApp.error = { message: "Something went wrong"}
    get "/"
  end
end
