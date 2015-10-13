local mul, parent = torch.class('pstoynn.mul', 'nn.Module')

function mul:__init(w)
  self:reset(w)
end

function mul:reset(w)
  w = w or 0.2
  self.weight = w
  self.gradWeight = 0
end

function mul:updateOutput(input)
  self.output = input:clone():mul(self.weight)
  return self.output
end

function mul:updateGradInput(input, gradOutput)
  self.gradInput = gradOutput:clone():mul(self.weight)
  return self.gradInput
end

function mul:accGradParameters(input, gradOutput, scale)
  scale = scale or 1
  self.gradWeight = torch.dot(gradOutput, input)
end

function mul:__tostring__()
  return torch.type(self) .. string.format(': w = %f', self.weight)
end
