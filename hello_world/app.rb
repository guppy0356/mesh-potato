require 'json'

module Lambda
  class HelloWorld
    def self.invoke(event:, context:)
      {
        statusCode: 200,
        body: {
          message: "Hello World!",
        }.to_json
      }
    end
  end
end
