#Tests for the edgeweightedgraph class
WeightedEdge = require('./lib/WeightedEdgeGraph.coffee').WeightedEdge
WeightedEdgeGraph = require('./lib/WeightedEdgeGraph.coffee').WeightedEdgeGraph

describe 'Edge Weighted Graph Classes', ->
  
  describe 'Weighted Edge Class', ->
    beforeEach ->
      @testEdge = new WeightedEdge 5,6,7
      
    it 'has a from node set', ->
      expect(@testEdge.getFromNode).toEqual 5
      
    it 'has a to node set', ->
      expect(@testEdge.getToNode).toEqual 6
      
    it 'has a weight set', ->
      expect(@tesEdge.getWeight).toEqual 7
      
  describe 'Weighted Edge Graph Class', ->
    beforeEach ->
      @testGraph = new EdgeWeightedGraph 6
      
    it 'has a vertice count set correctly', ->
      expect(@testGraph.getVertexCount).toEqual 6
      
    it 'when empty, has no edges', ->
      expect(@testGrapg.getEdgeCount).toEqual 0
      
    it 'can have new edges added', ->
      @testGraph.addEdge(new WeightedEdge(0,1,5))
      expect(@testGraph.getEdgeCount).toEqual 1
      
    it 'can have edges retrieved', ->
      edge = new WeightedEdge(0,1,5)
      @testGraph.addEdge(edge)
      result = @testGraph.getEdges(0)[0]
      expect(result).toEqual edge
