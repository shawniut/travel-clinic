class AppointmentsController < ApplicationController
  layout 'site'
  def index
  end

  def new
  end

  def all
    @appointments = Appointment.all
  end

  def thanks
  end

  def create
    ap = Appointment.new
    ap.name = params[:name]
    ap.email = params[:email]
    ap.phone = params[:phone]
    ap.location = params[:location]
    ap.destination = params[:destination]
    ap.health_card_number = params[:health_card_number]
    ap.additional_health_card_number = params[:additional_health_card_number]
    ap.travel_date = params[:travel_date].to_datetime
    ap.ap_datetime = params[:ap_datetime].to_datetime
    ap.message = params[:message]

    if ap.save
      render action: :thanks
    else
      render action: :error
    end
  end
end
