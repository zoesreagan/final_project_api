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

#Create new form route
##working!!
  post '/' do
    puts @payload
    puts "this is payload ------------------"
    @form = Form.new #instantianting new class from Form model
    @form.user_id = session[:user_id]
    @form.date_created = @payload[:date_created]
    @form.response_1 = @payload[:response_1]
    @form.response_2 = @payload [:response_2]
    @form.response_3 = @payload [:response_3]
    @form.response_4 = @payload [:response_4]
    @form.response_5 = @payload [:response_5]
    @form.response_6 = @payload [:response_6]
    @form.response_7 = @payload [:response_7]
    @form.response_8 = @payload [:response_8]
    @form.response_9 = @payload [:response_9]
    @form.save

    {
      success: true,
      message: "New form successfully created",
      added_form: @form
    }.to_json
  end


##update form route
#working!
  put '/:id' do
    puts @payload
    puts "this is payload ------------------"
    @form = Form.find params[:id]
    @form.user_id = session[:user_id]
    @form.date_created = @payload[:date_created]
    @form.response_1 = @payload[:response_1]
    @form.response_2 = @payload [:response_2]
    @form.response_3 = @payload [:response_3]
    @form.response_4 = @payload [:response_4]
    @form.response_5 = @payload [:response_5]
    @form.response_6 = @payload [:response_6]
    @form.response_7 = @payload [:response_7]
    @form.response_8 = @payload [:response_8]
    @form.response_9 = @payload [:response_9]
    @form.save

    {
      success: true,
      message: "You've updated your form with id \##{@form.id}",
      updated_form: @form
    }.to_json

  end


  delete '/:id' do #working!
    @form = Form.find params[:id]
    @form.destroy
    {
      success: true,
      message: "Your form with the id of \##{@form.id} has been deleted"
    }.to_json
  end


end
