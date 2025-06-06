return {
  'kazhala/close-buffers.nvim',
  config = function()
    require('close_buffers').setup {
      preserve_window_layout = { 'this' },
      next_buffer_cmd = function(windows)
        require('bufferline').cycle(1)
        local bufnr = vim.api.nvim_get_current_buf()

        for _, window in ipairs(windows) do
          vim.api.nvim_win_set_buf(window, bufnr)
        end
      end,
    }
    local close_buffers = require 'close_buffers'
    vim.keymap.set('n', '<leader>bd', function()
      close_buffers.delete { type = 'this' }
    end, { desc = '[B]uffer [D]elete' })

    vim.keymap.set('n', '<leader>bo', function()
      close_buffers.delete { type = 'other' }
    end, { desc = '[B]uffer [O]thers' })
  end,
}
