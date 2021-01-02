require_relative '../../../hello_world/app'

RSpec.describe Lambda::HelloWorld do
  describe 'invoke' do
    it 'cannot have comments' do
      body = { message: 'Hello World!' }
      response = Lambda::HelloWorld.invoke(event: nil, context: nil)

      expect(response[:body]).to eq(body.to_json)
    end
  end
end
