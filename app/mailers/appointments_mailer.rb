class AppointmentsMailer < ApplicationMailer

    default from: "\"Travel Clinic Calgary\" <info@travelcliniccalgary.ca>"

    require 'mail'

    def new_appointment(appointment_id)
      @appointment = Appointment.find(appointment_id)
      mail(to: 'shawniut@gmail.com',reply_to: 'info@travelcliniccalgary.ca', subject: 'A new appointment request received')do |format|
          format.html { render :layout => false }
      end
    end
end
