require "spec_helper"

describe Lita::Handlers::Slacker, lita_handler: true do

  it { is_expected.to route("going out to") }
  it { is_expected.not_to route("going out of") }

  it "should respond with the the word slacker" do
    send_message("going out to")
    expect(replies.last).to eq("slacker")
  end

  it "should not respond" do
    send_message("going out for")
    expect(replies.last).not_to eq("slacker")
  end

end
