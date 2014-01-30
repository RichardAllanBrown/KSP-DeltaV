
class WeightedEdgeGraph()
	_nodes: new Array
	
	constructor: (numberOfNodes) ->
		_nodes.push(new Array) for n in numberOfNodes
	
	addEdge: (edge) ->
		from = edge.from
		to = edge.to
		_nodes[from].push(edge)
		_nodes[to].push(edge) if from !== to
	
	getEdges: (node) ->
		return _nodes[from]
	

class WeightedEdge()
	constructor: (@from, @to, @weight) ->
