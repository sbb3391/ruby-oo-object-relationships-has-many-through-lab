class Doctor

    attr_accessor :name

    @@all =  []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments 
        Appointment.all.select {|a| a.doctor == self}
    end
    
    def patients
        appointments.map {|a| a.patient}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end


end

