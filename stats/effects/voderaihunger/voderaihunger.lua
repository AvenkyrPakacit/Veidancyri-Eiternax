function init()
  statModifierGroup = effect.addStatModifierGroup({})
  e = 2
  d = 1
end
function update(dt)
  effect.setStatModifierGroup(statModifierGroup, {
    {stat = "powerMultiplier", effectiveMultiplier = 1 + (e - status.resourcePercentage("food") * e)},
    {stat = "protection", effectiveMultiplier = 1 - (d - status.resourcePercentage("food") * d)}
  })
end