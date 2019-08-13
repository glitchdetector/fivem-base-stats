name "Basic Statistics"
author "glitchdetector"
contact "glitchdetector@gmail.com"
version "1.0"

description "Tracks a few server statistics"
details [[
    Tracks the following:
     - amount of players that join
     - total online players
     - chat messages sent

    Also serves as an example use of the StatHat resource
]]
usage [[
    Requires the StatHat resource
    No configuration is needed for this resource
]]

dependency 'stathat'

server_script 'sv_stats.lua'
