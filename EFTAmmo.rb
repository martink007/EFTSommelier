#program needs to prompt user for which ammo type they need info for.
puts "Hello comrade! What ammo do you need information for? Shotgun, rifle or pistol?"
    #program will need to take a user input 
    ammo_section = gets.chomp.to_s.downcase 
    #first level of user input determines what type of ammo the user wants to investigate 
    #i.e Shotgun, Rifle or Pistol ammo types
#program will need to return a confirmation of user selection. 
   
if ammo_section == "shotgun"
    puts "Nothing takes down scavs or PMC's like shotguns! Which ammo type?"
    elsif
    ammo_section == "rifle"
    puts "So you want to reach out and touch your enemies? Which ammo type?"
    elsif
    ammo_section == "pistol"
    puts "Oh, hello again Mr. Wick! What pistol munitions are you interested in?"
    else 
    puts "Invalid ammo selection please select from Shotgun, Rifle or Pistol"
end




#user will then need to input the caliber of selected munitions 
#program will return a selection of ammo types from the selected caliber

#using the gem CLI/UI we can provide the user with a list of selectable types to mitigate errors.
# require gem 'cli/ui'

#program pulls info from hash table with diffferent damage, armour pen and armour penetration levels 


















# ammo_hash_table = {
#              "SP" => [68, 11],
#              "HP" => [74, 11],
#              "PS" => [50, 25],
#              "PP" => [46, 30],
#              "BS" => [40, 51],
#              "IGOLNIK" => [37, 62]
#         }
# puts ammo_hash_table[type][0]
