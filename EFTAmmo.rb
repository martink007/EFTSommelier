require "cli/ui"
require "pastel"
require 'colorize'
require "colorized_string"
require "tty-font"
require_relative './NFAM_data.rb'
#program pulls info from hash table with different damage, armour damage armour penetration and armor classes levels
#main data objects are stored in another file ./NFAM_data.rb
#program makes use of colorize to distinguish between class and ammo types.
#program needs to prompt user for which ammo type they need info for.
system("clear")
#terminal will clear everytime program is run
#user is prompted to select a firearm type from the menu.
#first selection chooses what type of firearm the user is looking for 
font = TTY::Font.new(:doom)
pastel = Pastel.new

    puts pastel.green(font.write("Escape from Tarkov:Sommelier"))
continue = "Yes"
while continue == "Yes"
    fire_arm_selection = CLI::UI::Prompt.ask('Hello comrade! What ammo do you need information for? Shotgun, rifle, assault rifle, Sub Machine Gun or pistol?') do |handler|
        handler.option('Shotgun')  { |selection| selection }
        handler.option('Rifle')     { |selection| selection }
        handler.option('Assault Rifle')  { |selection| selection }
        handler.option('Sub Machine Gun') { |selection| selection }
        handler.option('Pistol') { |selection| selection }
      end
#program will need to take a user input, user can select from the options provided in the app to mitigate errors.
      fire_arm_selection = fire_arm_selection.downcase
 #first level of user input determines what type of ammo the user wants to investigate 
    #i.e Shotgun, Rifle, assault rifle, pistol or smg ammo types
#program will need to return a confirmation of user selection.  
#second selection narrows down the ammo type to a caliber
def cal_level_selection(text, array)
    CLI::UI::Prompt.ask('What firearm type?') do |handler|
        array.each do |key, value|
            handler.option(key)  { |selection| selection }
        end
      end
end
#third selection defines the type of ammo within the caliber selection
def cal_type_selection(cal)
    CLI::UI::Prompt.ask('What ammo type?') do |handler|
        cal.each do |key, value|
            handler.option(key)  { |selection| selection }
        end
      end
end
#program outputs the damage, armor penetration and armor damage values for the chosen munitions.
def cal_type_information(type)
    puts ColorizedString["Damage: #{type[0]}"].colorize(:red) 
    puts ColorizedString["Pen Value: #{type[1]}"].colorize(:light_blue)
    puts ColorizedString["Armor Damage: #{type[2]}"].colorize(:light_blue) 
    puts ColorizedString["This ammo will penetrate armour class #{type[3]} and below"].colorize(:green)
end

#i need a while loop here
#if statement defining arguments and where in the data object the data will be retrieved.
if fire_arm_selection == "shotgun"
    # Assign SHOTGUN_AMMO to gun_key to make the following functions more flexible
    gun_key = SHOTGUN_AMMO
    # The function to recieve calib. Needs a string and they gun_key
    cal = cal_level_selection("Nothing takes down scavs or PMC's like shotguns! Which ammo type? are you looking for 12 gauge or 20 gauge?", gun_key)
    # The function to recieve calib. Needs the firearm weapon types
    type = cal_type_selection(gun_key[cal])
    # This functin provides the information regarding the selected amo type
    cal_type_information(gun_key[cal][type])
    elsif fire_arm_selection == "rifle"
        gun_key = RIFLE_AMMO
        cal = cal_level_selection("So you want to reach out and touch your enemies? Which caliber?", gun_key)
        type = cal_type_selection(gun_key[cal])
        cal_type_information(gun_key[cal][type])
    elsif fire_arm_selection == "pistol"
        gun_key = PISTOL_AMMO
        cal = cal_level_selection("Oh, hello again Mr. Wick! Information on the finest pistol munitions.", gun_key)
        type = cal_type_selection(gun_key[cal])
        cal_type_information(gun_key[cal][type])
    elsif fire_arm_selection == "assault rifle"
        gun_key = ASSAULT_RIFLE_AMMO
        cal = cal_level_selection("Mid range mastery is it?", gun_key)
        type = cal_type_selection(gun_key[cal])
        cal_type_information(gun_key[cal][type])
    elsif fire_arm_selection == "sub machine gun"
        gun_key = SUB_M_G_AMMO
        cal = cal_level_selection("Sprayin' n Prayin'", gun_key)
        type = cal_type_selection(gun_key[cal])
        cal_type_information(gun_key[cal][type])
    else 
        puts "Invalid ammo selection please select from Shotgun, Rifle, Assault rifle, Sub Machine Gun or Pistol"
end
# this function returns user to home or exit.
continue = CLI::UI::Prompt.ask("Would you like to know more?") do |handler|
         handler.option("Yes")  { |selection| selection }
        handler.option("No")  { |selection| selection }
end
end




    
















