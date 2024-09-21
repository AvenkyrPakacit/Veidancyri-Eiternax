function init()
  statModifierGroup = effect.addStatModifierGroup({})
  e = 2
  d = 1
end
--need to figure out how to make it work.
function update(dt)
  effect.setStatModifierGroup(statModifierGroup, {
    {stat = "powerMultiplier", effectiveMultiplier = 1 + (e - status.resourcePercentage("food") * e)}.
    {stat = "protection", effectiveMultiplier = 1 - (d - status.resourcePercentage("food") * d)}
  })
end

function uninit()
  
end