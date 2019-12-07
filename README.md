# Nightmode Github Repo
Github repository of for the Nightmode "wincondition" pack. Here are all the .scar files as well as the .xml files used to make the custom flare abilities. You can view them to get inspiration for your own implementations.

#### Supported gamemodes:
> Annihilation with custom popcap
> Annihilation 2x resources
> Annihilation 2x resources + zoom
> Victory Points (Standard)
> Victory Points 2x resources
> Victory Points 2x resources + zoom

## For Modders
Wish to make your tuning mod compatible with the night mode mod?
If so, you can contact @RagnarTheEverchosen or @JustCodiex. At the moment, all we need is your mod's GUID.
Then make an entity called 'nightmode_compatibility_check'. Additionally, make two new upgrades. 'nigtmode_day' and 'nigtmode_night'. Those upgrades will be used to tell when it's day and when it's night.
##### Flares
If you wish to implement flares, or any other light sources that remove the night modifier, give the squad the slot item 'dummy_slot_item' when near your light source (You'll have to handle the implementation of that on your own). We'll then use that slot item to determine if the night modifier should be applied or not.

## For Mappers
Have you designed a map that's perfect for a night battle, and want to make better use of this mod?
Well, you're in luck!

Simply create a new .scar file in your map folder. It must be titled as:
<sgb_filename>.scar
It's very important that the scar file matches the file name of your .sgb file. (without the .sgb extension)
Nextly, open the scar file, and paste the following:
```` lua
function OnMapInit()
    Rule_AddOneShot(OnInitNightMode, 0.1);
end
Scar_AddInit(OnMapInit);
function OnInitNightMode()
    pcall(NMAPI_SetTime, "night");
end
````
The above code will make sure your map starts out like a true night. It will also make sure, no fatal scar errors happen if it's played without the night mode.
