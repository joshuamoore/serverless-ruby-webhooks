class Webhook

  def initialize(body)
    @body = body
  end

  def execute
    @body
  end
end