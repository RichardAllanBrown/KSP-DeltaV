{spawn} = require 'child_process'
{print} = require 'util'
fs = require 'fs'

spawnAndRun = (command, args, callback) ->
  subproc = spawn(command, args)
  subproc.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  subproc.stdout.on 'data', (data) ->
    print data.toString()
  subproc.on 'exit', (code) ->
    callback?() if code is 0

test = (callback) ->
  print "testing..."
  spawnAndRun 'jasmine-node', ['--coffee', './spec'], callback
  print "\n"

build = (callback) ->
  #fs.mkdirSync 'lib', 0o0755
  print "compiling..."
  spawnAndRun 'coffee', ['--compile', '--output', 'lib', 'src'], callback
  spawnAndRun 'coffee', ['--compile', '--output', 'spec', 'spec'], callback
  print "\n"

task 'test', 'Run all tests', ->
  test()
  print fs.readdir('.')

task 'build', 'Build the Javascript output', ->
  build()

