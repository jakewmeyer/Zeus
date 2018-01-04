require "./spec_helper"

describe "#get_os" do
  it "returns the correct os for the computer" do
    get_os.should be_a(String)
  end
end
