local mytester = torch.Tester()
local this = {}

this.test_mul = function ()
  print('testing mul...done')
end

mytester:add(this)

return function ()
  mytester:run()
end