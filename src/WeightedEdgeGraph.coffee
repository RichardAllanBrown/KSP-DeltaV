#Simple weighted edge graph data structure
class WeightedEdgeGraph

  #Creates a new WeightedEdgeGraph, must know the number of nodes to include first
  constructor: (numberOfNodes) ->
    @_v = numberOfNodes
    @_e = 0
    @_nodes = []
    
    @_nodes.push(new Array) for n in numberOfNodes
    
  getVertexCount: () ->
    @_v
    
  getEdgeCount: () ->
    @_e

  #Add a new weighted edge to the graph
  addEdge: (edge) ->
    @_e ++
    from = edge.from
    to = edge.to
    @_nodes[from].push(edge)
    @_nodes[to].push(edge) if from != to

  #Returns an array of all edges on the graph
  getEdges: (node) ->
    @_nodes[from]

#Weighted Edge class used to store the from to and weight
class WeightedEdge
  constructor: (@from, @to, @weight) ->
    
  getFromNode: () ->
    @from
    
  getToNode: () ->
    @to
    
  getWeight: () ->
    @weight

#Exports, used for testing purposes
exports.WeightedEdge = WeightedEdge
exports.WeightedEdgeGraph = WeightedEdgeGraph
