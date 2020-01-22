class Doctor 
  
  @@all = [] 
  
  attr_accessor :name 
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def new_appointment(patient, date)
    Appointment.new()
    
  end
  
  def appointments
    Appointment.all.find{|appt| appt.doctor =self}
  end
  
  def patients
    appointments.collect{|appt| appt.patient}
  end
  
end