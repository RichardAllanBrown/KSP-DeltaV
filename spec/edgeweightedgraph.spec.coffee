#Tests for the edgeweightedgraph class
WeightedEdge = require('../lib/WeightedEdgeGraph').WeightedEdge
WeightedEdgeGraph = require('../lib/WeightedEdgeGraph').WeightedEdgeGraph

describe 'The WeightedEdge class, once constructed', ->
  beforeEach ->
    @testEdge = new WeightedEdge 5,6,7
    
  it 'has a value returned for getFromNode', ->
    expect(@testEdge.getFromNode()).toEqual 5
    
  it 'has a value returned for getToNode', ->
    expect(@testEdge.getToNode()).toEqual 6
    
  it 'has a value returned for getWeight', ->
    expect(@testEdge.getWeight()).toEqual 7
    
describe 'The eightedEdgeGraph class, with 6 nodes', ->
  beforeEach ->
    @testGraph = new WeightedEdgeGraph 6
    
  it 'has a vertex count set correctly', ->
    expect(@testGraph.getVertexCount()).toEqual 6
    
  it 'has zero edges when none are set', ->
    expect(@testGraph.getEdgeCount()).toEqual 0
    
  it 'can have new edges added, changing the edge count', ->
    @testGraph.addEdge(new WeightedEdge(0,1,5))
    expect(@testGraph.getEdgeCount()).toEqual 1
    @testGraph.addEdge(new WeightedEdge(1,2,3))
    expect(@testGraph.getEdgeCount()).toEqual 2
    
  it 'can have the edges retrieved', ->
    edge = new WeightedEdge(0,1,5)
    @testGraph.addEdge(edge)
    result = @testGraph.getEdges(0)[0]
    expect(result).toEqual edge
