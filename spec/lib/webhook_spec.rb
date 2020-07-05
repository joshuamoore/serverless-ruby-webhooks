require "spec_helper"

require "./lib/webhook"

RSpec.describe Webhook do
  subject { Webhook }

  context '#execute' do
    let(:payload) { File.new('./spec/support/fixtures/webhook/event.json').read }
    let(:context) { {} }
    let(:event) {
      {
      #   'headers' => {
      #     'X-GitHub-Delivery' => '72d3162e-cc78-11e3-81ab-4c9367dc0958',
      #     'X-GitHub-Event' => 'push'
      #   },
      #   'body' => payload
      }.to_s
    }

    let(:response) { subject.new(payload).execute }

    it "is valid with valid attributes" do
      expect(event).to eq(response)
    end
  end
end
