
function show_msg_api(msg)
  -- TheFrontEnd:ShowTitle("", msg)
  -- self.percent_text = self:AddChild(Text(TALKINGFONT, 20))
  -- self.percent_text:SetHAlign(ANCHOR_MIDDLE)
  -- self.percent_text:SetPosition(0, -28, 0)

  -- or
  -- local text = TheFrontEnd.showmsg

  --   self.alpha = 0

  --   self.title = Text(TITLEFONT, 100)
  --   self.title:SetPosition(0, -30, 0)
  --   self.title:Hide()
  --   self.title:SetVAnchor(ANCHOR_MIDDLE)
  --   self.title:SetHAnchor(ANCHOR_MIDDLE)
  -- self.overlayroot:AddChild(self.title)

  --   self.subtitle = Text(TITLEFONT, 70)
  --   self.subtitle:SetPosition(0, 70, 0)
  --   self.subtitle:Hide()
  --   self.subtitle:SetVAnchor(ANCHOR_MIDDLE)
  --   self.subtitle:SetHAnchor(ANCHOR_MIDDLE)
  -- self.overlayroot:AddChild(self.subtitle)

  if (TheFrontEnd.showmsg) then
    TheFrontEnd.overlayroot:RemoveChild(TheFrontEnd.showmsg)
    TheFrontEnd.showmsg:Kill()
    TheFrontEnd.showmsg = nil
  end
  if (autodismount.update_msg_task) then
    autodismount.update_msg_task:Cancel()
    autodismount.update_msg_task = nil
  end

  -- if (1) then
  --   print(100, "debug return")
  --   return
  -- end
   -- 39
   -- 40
   -- 41: ANCHOR_MIDDLE = 0
   -- 42: ANCHOR_LEFT = 1
   -- 43: ANCHOR_RIGHT = 2
   -- 44: ANCHOR_TOP = 1
   -- 45: ANCHOR_BOTTOM = 2

  local text = TheFrontEnd.showmsg
print(111, text)
  if not (text) then
print(222, text)
    text = Text(TALKINGFONT, 28)
    text:Hide()
    text:SetPosition(0, 100, 0)
    text:SetVAnchor(ANCHOR_MIDDLE)
    text:SetHAnchor(ANCHOR_MIDDLE)
    TheFrontEnd.showmsg = text
    TheFrontEnd.overlayroot:AddChild(text)
print(333, text)
  end

  text:Hide()
  text:SetString(msg)


  local fade_time = 0
  local fade_total = 2
  local dt = 1/10

--   update_fade_text = _f(function (text, dt)
--     if (fade_time < dt) then
--       text:Show()
--     end


--     fade_time = fade_time + dt
--     local alpha = easing.inOutCubic(fade_time, 0.5, 1, fade_total)
--     text:SetAlpha(alpha)
-- print(444, text, fade_time)
--     if (fade_time > fade_total) then
-- print(555, text, fade_time)
--       text:Hide()
--       autodismount.update_msg_task:Cancel()
--       autodismount.update_msg_task = nil
--     end
--   end)

--   autodismount.update_msg_task = ThePlayer:DoPeriodicTask(dt, function()
--     update_fade_text(text, dt)
--   end, 0)


  on_text_timeover = _f(function (text, dt)
    text:Hide()
    autodismount.update_msg_task:Cancel()
    autodismount.update_msg_task = nil
  end)

  text:Show()
  autodismount.update_msg_task = ThePlayer:DoTaskInTime(fade_total, function()
    on_text_timeover(text, dt)
  end, 0)


print(666, text, fade_time)


end

print(111, 222, 333)