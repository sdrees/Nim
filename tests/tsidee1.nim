
var
  global: int

proc dontcare(x: int): int = return x + global

proc SideEffectLyer(x, y: int): int {.noSideEffect.} = #ERROR_MSG 'SideEffectLyer' can have side effects
  return x + y + dontcare(x)
  
echo SideEffectLyer(1, 3) 

