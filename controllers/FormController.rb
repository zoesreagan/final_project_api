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
# working!
get '/' do
  @form = Form.where(user_id: session[:user_id])
  {
    form: @form
  }.to_json
end

#getting specific from so user may update
#working!
get '/:id' do
  @form = Form.find params[:id]
  @date_created = @form[:date_created]
  @response_1 = @form[:response_1]
  @response_2 = @form [:response_2]
  @response_3 = @form [:response_3]
  @response_4 = @form [:response_4]
  @response_5 = @form [:response_5]
  @response_6 = @form [:response_6]
  @response_7 = @form [:response_7]
  @response_8 = @form [:response_8]
  @response_9 = @form [:response_9]

  {
    success: true,
    # form: @form,
    date_created: @date_created,
    response_1: @response_1,
    response_2: @response_2,
    response_3: @response_3,
    response_4: @response_4,
    response_5: @response_5,
    response_6: @response_6,
    response_7: @response_7,
    response_8: @response_8,
    response_9: @response_9
  }.to_json
end


end
