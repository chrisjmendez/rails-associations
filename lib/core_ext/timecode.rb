require 'Timecode'

# Description: Convert hh:mm:ss strings into actual timecode
# Usage: Timecode.convert_timecode_into_seconds( "#{timecode}" )
# Resource: http://rubydoc.info/gems/timecode/1.1.0/Timecode
# The reason for doing this is to also work with film music 
class Timecode
  def self.convert_timecode_into_seconds( string )    
    # Convert hh::mm:ss::ff into SMTPE timecode
    framerate = 25
    timecode = string
    #if the timecode is missing a number before minutes, then we need to insert one
    if timecode[0..1].include? ":"
      timecode = "0" + timecode
    end
    # =>       hours + [mins:secs] + frames
    timecode = File.join("00:", timecode, ":00")
    #Convert the timecode into seconds
    seconds = Timecode.parse(timecode, framerate).to_seconds
    #Second is a float right now so convert it to a string a strip out that extra float stuff.0
    seconds = seconds.to_s.split(".").first
    
    return seconds
  end
end

