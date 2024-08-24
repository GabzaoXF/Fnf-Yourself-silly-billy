-- Script Remade 'n' updated by Josno | Original Script made by ChefSarah!

--[[
	-- [Default Config] --
lyricNumber = 0
alphaNumber = 0.5
easingStyle = 'QuadOut'
interpolationNumber = 0.5
textSize = 55
textBorderSize = '2'
textAlignment = 'center'
textBorderColor = '000000'
fontName = 'Times New Roman.ttf'
--]]

	-- [Easy Config] --
local lyricNumber = 0
local alphaNumber = 0
local easingStyle = 'QuadOut'
local interpolationNumber = 0
local textSize = 55
local textBorderSize = '2'
local textAlignment = 'center'
local textBorderColor = '000000' --ColorHex
local fontName = 'Times New Roman.ttf'	-- Put your custom Font.ttf in '\Mod Folder\fonts\'

function onEvent(name, value1, value2)
	if name == 'ill make' then
		-- Bump up the line counter / Aumenta el contador de líneas
		lyricNumber = lyricNumber + 1
		local lyricNumber2 = lyricNumber - 1
		local lyricNumber3 = lyricNumber - 2
		local lyricNumber4 = lyricNumber - 3
		
		-- Create the text / Crea el texto
		makeLuaText(lyricNumber, '', screenWidth, 0, 660)
		setTextFont(lyricNumber, fontName)
		setTextString(lyricNumber, value1)
		setTextColor(lyricNumber, value2)
		setTextSize(lyricNumber, textSize)
		setObjectCamera(lyricNumber, 'other');
		setTextBorder(lyricNumber, textBorderSize, textBorderColor)
		setTextAlignment(lyricNumber, textAlignment)
		addLuaText(lyricNumber)
		
		-- Animation / Animación

		-- Properties / Propiedades
		setProperty(lyricNumber2 .. '.alpha', alphaNumber)
		setProperty(lyricNumber3 .. '.alpha', alphaNumber - 0)
		-- setProperty(lyricNumber4 .. '.visible', false) [idk]
		
		-- Remove at the end / Eliminar al final
		removeLuaText(lyricNumber4, true)
		
		-- Delete the text / Eliminar el texto
		if value2 == '' then
			removeLuaText(lyricNumber, true)
			removeLuaText(lyricNumber2, true)
			removeLuaText(lyricNumber3, true)
			removeLuaText(lyricNumber4, true)
		end
		-- Type the SampleText / Escribe el texto de ejemplo
		if value1 == 'txt' then
			setTextColor(lyricNumber, 'FFBB00')
			setTextString(lyricNumber, value2)
		end
		-- Set default Color / Establece el color predeterminado
		if value2 == '' then
			setTextString(lyricNumber, 'Sample Text')
		end
		
		function rgbToHex(rgb)
			return string.format("%02x%02x%02x", math.floor(rgb[1]), math.floor(rgb[2]), math.floor(rgb[3]))
		end
			
		if value2 == 'IconP1' then
			setTextColor(lyricNumber, rgbToHex(getProperty('boyfriend.healthColorArray')))
		elseif value2 == 'IconP2' then
			setTextColor(lyricNumber, rgbToHex(getProperty('dad.healthColorArray')))
		end
	end
end
-- Don't forget to give credit to ChefSarah98#9948 and me (Josno.json#5571) on Discord!