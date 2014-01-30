#Simple weighted edge graph data structure
class WeightedEdgeGraph()
	_nodes: new Array
	
	#Creates a new WeightedEdgeGraph, must know the number of nodes to include first
	constructor: (numberOfNodes) ->
		_nodes.push(new Array) for n in numberOfNodes
	
	#Add a new weighted edge to the graph
	addEdge: (edge) ->
		from = edge.from
		to = edge.to
		_nodes[from].push(edge)
		_nodes[to].push(edge) if from !== to
	
	#Returns an array of all edges on the graph
	getEdges: (node) ->
		return _nodes[from]
	
#Weighted Edge class used to store the from to and weight
class WeightedEdge()
	constructor: (@from, @to, @weight) ->
