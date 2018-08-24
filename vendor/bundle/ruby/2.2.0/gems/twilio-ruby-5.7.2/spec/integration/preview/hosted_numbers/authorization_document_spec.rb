##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

require 'spec_helper.rb'

describe 'AuthorizationDocument' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.hosted_numbers.authorization_documents('PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "address_sid": "AD11111111111111111111111111111111",
          "cc_emails": [
              "aaa@twilio.com",
              "bbb@twilio.com"
          ],
          "date_created": "2017-03-28T20:06:39Z",
          "date_updated": "2017-03-28T20:06:39Z",
          "email": "test@twilio.com",
          "links": {
              "dependent_hosted_number_orders": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/DependentHostedNumberOrders"
          },
          "sid": "PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "signing",
          "url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.preview.hosted_numbers.authorization_documents('PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.hosted_numbers.authorization_documents('PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "cc_emails": [
              "test1@twilio.com",
              "test2@twilio.com"
          ],
          "date_created": "2017-03-28T20:06:39Z",
          "date_updated": "2017-03-28T20:06:39Z",
          "email": "test+hosted@twilio.com",
          "links": {
              "dependent_hosted_number_orders": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/DependentHostedNumberOrders"
          },
          "sid": "PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "signing",
          "url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.preview.hosted_numbers.authorization_documents('PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa').update()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.hosted_numbers.authorization_documents.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/HostedNumbers/AuthorizationDocuments',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments?PageSize=50&Page=0",
              "key": "items",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments?PageSize=50&Page=0"
          },
          "items": []
      }
      ]
    ))

    actual = @client.preview.hosted_numbers.authorization_documents.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments?PageSize=50&Page=0",
              "key": "items",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments?PageSize=50&Page=0"
          },
          "items": [
              {
                  "address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "cc_emails": [
                      "test1@twilio.com",
                      "test2@twilio.com"
                  ],
                  "date_created": "2017-03-28T20:06:39Z",
                  "date_updated": "2017-03-28T20:06:39Z",
                  "email": "test+hosted@twilio.com",
                  "links": {
                      "dependent_hosted_number_orders": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/DependentHostedNumberOrders"
                  },
                  "sid": "PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "signing",
                  "url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.preview.hosted_numbers.authorization_documents.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.hosted_numbers.authorization_documents.create(hosted_number_order_sids: ['hosted_number_order_sids'], address_sid: 'ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', email: 'email')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'HostedNumberOrderSids' => Twilio.serialize_list(['hosted_number_order_sids']) { |e| e },
        'AddressSid' => 'ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        'Email' => 'email',
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/HostedNumbers/AuthorizationDocuments',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "cc_emails": [
              "test1@twilio.com",
              "test2@twilio.com"
          ],
          "date_created": "2017-03-28T20:06:39Z",
          "date_updated": "2017-03-28T20:06:39Z",
          "email": "test+hosted@twilio.com",
          "links": {
              "dependent_hosted_number_orders": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/DependentHostedNumberOrders"
          },
          "sid": "PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "signing",
          "url": "https://preview.twilio.com/HostedNumbers/AuthorizationDocuments/PXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.preview.hosted_numbers.authorization_documents.create(hosted_number_order_sids: ['hosted_number_order_sids'], address_sid: 'ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', email: 'email')

    expect(actual).to_not eq(nil)
  end
end