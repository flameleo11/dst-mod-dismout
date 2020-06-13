
		-- No point of showing icon if controller connected
		local controller_mode = TheInput:ControllerAttached();t_say(controller_mode)

		-- HUD Icon
		if not HIDE_HUD_ICON and not controller_mode then
			local ImageButton = require "widgets/dstimagebutton"

t_imb = require "widgets/dstimagebutton";t_say(t_imb)
			controls.waypoint_icon = controls.top_root:AddChild(
				ImageButton("images/icon.xml","icon.tex","icon.tex","icon.tex")
			)
			local sw, sh = GetScaledScreen(controls)
			local posX = sw/2
			local posY = -sh
			local offX, offY = controls.waypoint_icon:GetSize()

			controls.waypoint_icon:SetTooltip(STRINGS.WAYPOINT.UI.HUD.TOOLTIP ..
				"\n(" .. string.upper(string.char(KEY)) .. ")")
			controls.waypoint_icon:SetPosition(posX - offX/2,posY + offY*1.2,0)
			controls.waypoint_icon:SetNormalScale(.7)
			controls.waypoint_icon:SetFocusScale(.8)
			controls.waypoint_icon:SetOnClick(function()
				if controls.waypoint:IsVisible() then
					controls.waypoint:Hide(true)
				else
					controls.waypoint:Show(true)
				end
			end)
		end