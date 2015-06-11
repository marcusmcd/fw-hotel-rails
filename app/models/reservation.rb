class Reservation < ActiveRecord::Base
  after_save :set_room_status
  before_destroy :check_room_status
  
  private
    def set_room_status
      room = Room.find_by room_number: self.room_id
      room.reserved = true
      room.save
    end
    
    def check_room_status
      room = Room.find_by room_number: self.room_id
      room.reserved = false
      room.save
    end
end