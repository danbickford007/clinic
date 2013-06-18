class AppointmentsController < ApplicationController
  
  def index
    @appointments = Appointment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointments }
    end
  end

  def show
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appointment }
    end
  end

  def new
    @appointment = Appointment.new
    @customers = Customer.all
    if @customers.any?
      @pets = @customers.first.pets
    else
      @pets = []
    end
    @vets = Vet.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appointment }
    end
  end

  def load
    pets = Pet.where(:customer_id=>params[:id]) 
    respond_to do |format|
      format.js{render :js=>"loadPetOptions(#{pets.to_json})"}
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render json: @appointment, status: :created, location: @appointment }
      else
        format.html { render action: "new" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      if @appointment.update_attributes(params[:appointment])
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url }
      format.json { head :no_content }
    end
  end
end
