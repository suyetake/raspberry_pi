require 'bundler/setup'
require 'dino'
board = Dino::Board.new(Dino::TxRx::Serial.new)
button = Dino::Components::Button.new(pin: 6, board: board)
servo = Dino::Components::Servo.new(pin: 10, board: board)

button.down do
  puts “button NOT pressed”
end

button.up do
  [80 , 0].cycle do |angle|
    servo.position = angle
    end

end
