class Appointment
  attr_accessor :location, :purpose, :hour, :min
  def initialize (location, purpose, hour, min)
    @location =  location
    @purpose = purpose
    @hour = hour
    @min = min
  end
end

class MonthlyAppointment < Appointment
  attr_accessor :day
  def initialize(location, purpose, hour, min, day)
    super(location, purpose, hour, min, day)
    @day = day
  end

  def occurs_on?(day)
    day == @day
  end

  def to_s
    "Reunión mensual en #{location} sobre #{purpose} el #{day} a la(s) #{hour}:#{min}"
  end
end

class DailyAppointment < Appointment
  def occurs_on?(hour, min)
    hour == @hour && min == @min
  end
  def to_s
    "Reunión diaria en #{location} sobre #{purpose} a la(s) #{hour}:#{min}"
  end
end


class OneTimeAppointment < Appointment
  attr_accessor :day, :month, :year
  def initialize (location, purpose, hour, min, day, month, year)
    super(location, purpose, hour, min, day, month, year)
    @day = day
    @month = month
    @year = year
  end

  def occurs_on?(day, month, year)
  day == @day && month == @month && year == @year
  end

  def to_s
    "Reunión única en #{location} sobre #{purpose} a la(s) #{hour}:#{min} el #{day}/#{month}/#{year}"
  end
end

cita_diaria = DailyAppointment.new("A","B",10,10)
puts cita_diaria

cita_mensual = MonthlyAppointment.new("A","B",1,10,10)
puts cita_mensual

cita_unica = OneTimeAppointment.new("A","B",10,10,1,1,2020)
puts cita_unica
