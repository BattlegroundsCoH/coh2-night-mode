## Table of contents
* [About](https://github.com/RagnarTheEverchosen/CoH2NightMode#about)
* [For Modders](https://github.com/RagnarTheEverchosen/CoH2NightMode#for-modders)
* [For Mappers](https://github.com/RagnarTheEverchosen/CoH2NightMode#for-mappers)


## About
Github repository for the Night Mode "wincondition" pack. Here are all the .scar files as well as the .xml files used to make the custom flare abilities. You can view them to get inspiration for your own implementations.

#### Supported gamemodes:
> - Annihilation
> - Annihilation 2x resources
> - Annihilation 2x resources + zoom
> - Victory Points
> - Victory Points 2x resources
> - Victory Points 2x resources + zoom

## For Modders
Wish to make your tuning mod compatible with the night mode mod?

The first thing we need to do is to create two new upgrades called `time_day` and `time_night` and set the `owner_type` to `player`.

![Upgrade](https://i.imgur.com/WrnufDd.png)

Now that we have the upgrades we can move on to the slot item. Create a slot item `time_night_slotitem` and set the `owner_type` to `squad`. And you want to set up the `on_add_action` like this:

![Slot Item](https://i.imgur.com/JzDgoh5.png)

Here you can get creative and set the `apply_modifiers_action` as you like. This will make the squads benefit from the modifiers when they have this slot item. To how the squads will acquire this slot item we will get later in this tutorial.

You also want to copy and paste this `requirement_action` and change the unit type to `hmgs`/`mortars`/`vehicle`. And again you can customize the benefits for each one of the unit types. 

So far we can check if it is day or night and have a slot item that will help our units fight the night. It is time we created the auras. First, we will create an aura called `night_debuff` and set it up like this:

![Night Aura 1](https://i.imgur.com/65f7fLu.png)

Now that we have set up our first `requirement_action` lets move to the other once. They should look something like this:

![Night Aura 2](https://i.imgur.com/7o9PMvl.png)

And once again you can get creative and set the `apply_modifiers_action` as you like. These modifiers will effect the squads when the night comes. And you also want to copy and paste this `requirement_action` and change the unit type to `hmgs`/`mortars`/`vehicle`. And again you can customize the debuffs for each one of the unit types.

This was our `night_debuff` aura. Now we will create our second aura called `night_debuff_remove`. This one is simple, take a look:

![Flare Aura](https://i.imgur.com/Zq9hUAv.png)

In this next step, we will put to use everything we created so far. Let us create an EBPS file called `aura_night_debuff`.

![EBPS 1](https://i.imgur.com/tpiUvht.png)

It doesn't really matter what `animator` you use in `entity_blueprint_ext` as long you set the `is_visible_in_game` to `False`. But the most important thing here is the `radius` in your `add_aura` action. Make sure that the `radius` is set to max range possible an that is `3,402823E+38`.

Our next EBPS file will be called `aura_flare`.

![EBPS 2](https://i.imgur.com/OLRxqS4.png)

Again it doesn't really matter what `animator` you use in `entity_blueprint_ext` as long you set the `is_visible_in_game` to `False`. Here the `radius` will be equal to whatever the effect range of your flare ability that we will create in the next step is. Here in the example, it is `35`.

So as I said now we will create the flare ability for our mortars. You can copy the soviet mortar flare ability `mortar_fire_flares_ability_mp` and modify the `action_list`.

![Flare Ability](https://i.imgur.com/9KMpnm4.png)

Here we have added a new `action` to the original `action_list_sequences`. As the `entity_blueprint` we want to set our `aura_flare` that we created earlier.

The last thing you need to do is to give us your mod's GUID. You can do so by contacting [@RagnarTheEverchosen](https://steamcommunity.com/id/ragnarthegamer/) or [@JustCodiex](https://steamcommunity.com/id/CoDiEx/). 

And that is it. We hope that this tutorial was easy to follow and everything works for you just fine. We also want to thank you you have chosen to make your mod compatible with Night Mode.

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
