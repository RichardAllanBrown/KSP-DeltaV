#Class for caclulating the delta V needed for moving between two bodies
class DeltaVCalc
  constructor(@_system): ->
  
  #Returns DeltaV needed to transfer from one circular orbit to another
  calcHohmannTransfer(gravParam, initOrbit, targetOrbit, parentRadius): ->
    toElliptical = caclHohmannToElliptical(gravParam, initOrbit, targetOrbit, parentRadius)
    toCircularize = caclHohmannToCircularise(gravParam, initOrbit, targetOrbit, parentRadius)
    toElliptical + toCircularize
  
  #Returns DeltaV needed to transfer from a circular to elliptical orbit
  calcHohmannToElliptical(gravParam, initOrbit, tragetOrbit, parentRadius): ->
    firstProd = Math.sqrt(gravParam / (initOrbit + parentRadius)
    secondProd = Math.sqrt((2 * (tragetOrbit + parentRadius)) / (targetOrbit + initOrbit + 2 * parentRadius))
    firstProd * (secondProd - 1)
  
  #Returns DeltaV needed to transfer from an elliptical to a cicular orbit
  caclHohmannToCircularise(gravParam, initOrbit, tragetOrbit, parentRadius): ->
    firstProd = Math.sqrt(gravParam / (tragetOrbit + parentRadius)
    secondProd = Math.sqrt((2 * (initOrbit + parentRadius)) / (targetOrbit + initOrbit + 2 * parentRadius))
    firstProd * (1 - secondProd)
