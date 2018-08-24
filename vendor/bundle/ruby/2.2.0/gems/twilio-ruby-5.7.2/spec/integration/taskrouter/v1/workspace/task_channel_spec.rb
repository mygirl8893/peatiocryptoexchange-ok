##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'TaskChannel' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                           .task_channels('TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels/TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2014-05-14T10:50:02Z",
          "date_updated": "2014-05-14T23:26:06Z",
          "friendly_name": "Default",
          "sid": "TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "default",
          "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels/TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                  .task_channels('TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.taskrouter.v1.workspaces('WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                           .task_channels.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "channels": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "2014-05-14T10:50:02Z",
                  "date_updated": "2014-05-14T23:26:06Z",
                  "friendly_name": "Default",
                  "sid": "TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unique_name": "default",
                  "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels/TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "meta": {
              "first_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels?PageSize=50&Page=0",
              "key": "channels",
              "last_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels?PageSize=50&Page=0",
              "next_page_url": null,
              "page": 0,
              "page_size": 1,
              "previous_page_url": null,
              "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                  .task_channels.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "channels": [],
          "meta": {
              "first_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels?PageSize=50&Page=0",
              "key": "channels",
              "last_page_url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels?PageSize=50&Page=0",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://taskrouter.twilio.com/v1/Workspaces/WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/TaskChannels?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.taskrouter.v1.workspaces('WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa') \
                                  .task_channels.list()

    expect(actual).to_not eq(nil)
  end
end