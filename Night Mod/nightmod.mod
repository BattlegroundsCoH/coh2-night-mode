<?xml version="1.0" encoding="utf-8"?>
<Document xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.datacontract.org/2004/07/RelicCore.ModProject">
	<Children xmlns:d2p1="http://schemas.microsoft.com/2003/10/Serialization/Arrays">
		<d2p1:anyType i:type="TableOfContents">
			<Alias>Data</Alias>
			<Children>
				<d2p1:anyType i:type="Folder">
					<Children>
						<d2p1:anyType i:type="Folder">
							<Children>
								<d2p1:anyType i:type="BurnFolder">
									<BurnSettings />
									<Hint>Default</Hint>
									<RelativeName>data\game\winconditions</RelativeName>
								</d2p1:anyType>
							</Children>
							<IsExpanded>true</IsExpanded>
							<Name>winconditions</Name>
						</d2p1:anyType>
					</Children>
					<IsExpanded>true</IsExpanded>
					<Name>game</Name>
				</d2p1:anyType>
				<d2p1:anyType i:type="Folder">
					<Children>
						<d2p1:anyType i:type="Folder">
							<Children>
								<d2p1:anyType i:type="BurnFolder">
									<BurnSettings />
									<Hint>Default</Hint>
									<RelativeName>data\scar\winconditions</RelativeName>
								</d2p1:anyType>
							</Children>
							<IsExpanded>true</IsExpanded>
							<Name>winconditions</Name>
						</d2p1:anyType>
					</Children>
					<IsExpanded>true</IsExpanded>
					<Name>scar</Name>
				</d2p1:anyType>
				<d2p1:anyType i:type="Folder">
					<Children>
						<d2p1:anyType i:type="BurnIcons">
							<PackSize>1024</PackSize>
							<RelativeName>data\ui</RelativeName>
						</d2p1:anyType>
					</Children>
					<IsExpanded>true</IsExpanded>
					<Name>ui</Name>
				</d2p1:anyType>
			</Children>
			<IsExpanded>true</IsExpanded>
		</d2p1:anyType>
		<d2p1:anyType i:type="TableOfContents">
			<Alias>Info</Alias>
			<Children>
				<d2p1:anyType i:type="BurnModInfo">
					<Dependencies />
					<Description>Concept for this mod by [url=https://www.coh2.org/topic/93711/mod-idea-nigth-mode]jackill2611.[/url]

[h1]Features[/h1]
» Added day and night cycle (1day = 15min)
» Night unit debuff
» Annihilation with popcap options 100/150/200/999
» Extended zoom option for victory points and annihilation gamemodes

[i]NOTE: Right now there is no way to remove the "Night" debuff but in the upcoming update you will be able to remove it with flares and campfires.[/i]

[h1]Compatibility[/h1]
[code]If you are a modder and you would like to make "Night Mode" compatible with your mod contact us.[/code]

Night Mode is [b]ONLY[/b] compatible with the vanilla game and mods that are listed under "Compatible mods".

All vanilla maps should work fine with this mod but workshop maps that have night/day cycle won't work with this mod.

[h1]Compatible mods[/h1]
» [url=https://steamcommunity.com/sharedfiles/filedetails/?id=350031348] All Units[/url]
» [url=https://steamcommunity.com/sharedfiles/filedetails/?id=909803416] WWII MOD[/url]
» [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1681429371] Imperial Japanese Forces[/url]
» [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1094151332] The Advanced Powers[/url]
» [url=https://steamcommunity.com/sharedfiles/filedetails/?id=341279469] Battleground: Europe[/url]</Description>
					<Hidden>false</Hidden>
					<Name>Night Mode</Name>
				</d2p1:anyType>
				<d2p1:anyType i:type="BurnFile">
					<BurnSettings i:nil="true" />
					<RelativeName>icon.tga</RelativeName>
				</d2p1:anyType>
			</Children>
			<IsExpanded>true</IsExpanded>
		</d2p1:anyType>
		<d2p1:anyType i:type="TableOfContents">
			<Alias>Locale</Alias>
			<Children>
				<d2p1:anyType i:type="Folder">
					<Children>
						<d2p1:anyType i:type="BurnFile">
							<BurnSettings i:nil="true" />
							<RelativeName>locale\english\english.ucs</RelativeName>
						</d2p1:anyType>
					</Children>
					<IsExpanded>true</IsExpanded>
					<Name>english</Name>
				</d2p1:anyType>
			</Children>
			<IsExpanded>true</IsExpanded>
		</d2p1:anyType>
		<d2p1:anyType i:type="TableOfContents">
			<Alias>Attrib</Alias>
			<Children>
				<d2p1:anyType i:type="Folder">
					<Children>
						<d2p1:anyType i:type="BurnAttributes">
							<RelativeName>nightmodattrib.xml</RelativeName>
						</d2p1:anyType>
					</Children>
					<IsExpanded>true</IsExpanded>
					<Name>attrib</Name>
				</d2p1:anyType>
			</Children>
			<IsExpanded>true</IsExpanded>
		</d2p1:anyType>
	</Children>
	<Guid>3690fed5-57b4-4fc6-8b97-53c2f52ed775</Guid>
	<IsExpanded>false</IsExpanded>
	<Type>WinConditionPack</Type>
</Document>