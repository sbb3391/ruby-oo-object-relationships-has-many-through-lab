class Patient

    attr_accessor :name, :date, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Patient.new(name)
        @date = date
        @doctor = doctor
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|a| a.patient == self}
    end

    def doctors
        appointments.map {|a| a.doctor}
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end


end
