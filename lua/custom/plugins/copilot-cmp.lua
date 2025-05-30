return {
  'zbirenbaum/copilot-cmp',
  event = 'InsertEnter',
  dependencies = { 'zbirenbaum/copilot.lua' },
  config = function()
    local ok, copilot_cmp = pcall(require, 'copilot_cmp')
    if ok then
      copilot_cmp.setup()
    end
  end,
}
