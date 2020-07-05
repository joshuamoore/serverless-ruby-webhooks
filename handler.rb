require "json"

require "./lib/webhook"
require "./lib/log"

def hello(event:, context:)
  Log.info "Webhook triggered: #{event}"
  webhook = Webhook.new(event)
  webhook.execute

  {
    statusCode: 200,
    body: {
      message: 'Go Serverless v1.0! Your function executed successfully!',
      input: event
    }.to_json
  }
end
