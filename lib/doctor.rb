class Doctor 
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end

  def appointments 
    Appointment.all.find_all do |appointment| 
      appointment.doctor == self
    end 
  end 

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 

  def patients
    self.appointments.collect do |appointment| 
      appointment.patient
    end 
  end

end 