#Simple weighted edge graph data structure
class WeightedEdgeGraph

  #Creates a new WeightedEdgeGraph, must know the number of nodes to include first
  constructor: (numberOfNodes) ->
    @_e = 0
    @_nodes = []
    @_nodes.push([]) for i in [0...numberOfNodes] by 1
    
  getVertexCount: () ->
    @_nodes.Length
    
  getEdgeCount: () ->
    @_e

  #Add a new weighted edge to the graph
  addEdge: (edge) ->
    @_e++
    from = edge.getFromNode()
    to = edge.getToNode()
    @_nodes[from].push(edge)
    @_nodes[to].push(edge) if from != to

  #Returns an array of all edges on the graph
  getEdges: (node) ->
    @_nodes[from]

#Weighted Edge class used to store the from to and weight
class WeightedEdge
  constructor: (@from, @to, @weight) ->
    
  getFromNode: ->
    @from
    
  getToNode: ->
    @to
    
  getWeight: ->
    @weight

#Exports, used for testing purposes
exports.WeightedEdge = WeightedEdge
exports.WeightedEdgeGraph = WeightedEdgeGraph
