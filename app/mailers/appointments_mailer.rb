class AppointmentsMailer < ApplicationMailer

    default from: "\"Travel Clinic Calgary\" <Douglasglen.Pharmacy@gmail.com>"

    require 'mail'

    def new_appointment(appointment_id)
      @appointment = Appointment.find(appointment_id)
      mail(to: 'shawniut@gmail.com',reply_to: 'Travelclinic.calgary@gmail.com', subject: 'A new appointment request received')do |format|
          format.html { render :layout => false }
      end
    end
end
