require 'torch'
require 'nn'

pstoynn = {}
dofile('./mul.lua')
pstoynn.test = dofile('./test.lua')

return pstoynn
