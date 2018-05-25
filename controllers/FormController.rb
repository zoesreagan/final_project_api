class FormController < ApplicationController

  before do
    payload_body = request.body.read
    if(payload_body != "")
      @payload = JSON.parse(payload_body).symbolize_keys
  end

  # if !session [:logged_in]
  #   halt 200, {
  #     success: false,
  #     message: 'you are not logged in!'
  #   }.to_json
  # end
end


# getting entire response form by user

get '/' do
  @form = Form.where(user_id: session[:user_id])

  {
    message: "HI!!",
    form: @form
  }.to_json
end


get '/:id' do
  @response = Response.find params[:id]
  @date_created = Response.find @response[:date_created]
  @response_1 = Response.find @response[:response_1]
  # @response_2 = Response.find @response [:response_2]
  # @response_3 = Response.find @response [:response_3]
  # @response_4 = Response.find @response [:response_4]
  # @response_5 = Response.find @response [:response_5]
  # @response_6 = Response.find @response [:response_6]
  # @response_7 = Response.find @response [:response_7]
  # @response_8 = Response.find @response [:response_8]
  # @response_9 = Response.find @response [:response_9]

  {
    success: true,
    date_created: @date_created,
    response_1: @response_1,
    # response_2: @response_2,
    # response_3: @response_3,
    # response_4: @response_4,
    # response_5: @response_5,
    # response_6: @response_6,
    # response_7: @response_7,
    # response_8: @response_8,
    # response_9: @response_9,
  }.to_json
end


end
