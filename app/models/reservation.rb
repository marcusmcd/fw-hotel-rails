class Reservation < ActiveRecord::Base
  after_initialize do |reservation|
    @room = Room.find_by room_number: self.room_id
  end
  
  after_save :set_room_status
  before_destroy :check_room_status
  
  room_numbers = Array (100..111) #Room numbers are 100 through 111 for this hotel.
  
  validates :room_id, inclusion: { in: room_numbers, message: "%{value} is not a valid room number" }
  
  private
    def set_room_status
      @room.reserved = true
      @room.save
    end
    
    def check_room_status
      @room.reserved = false
      @room.save
    end
end