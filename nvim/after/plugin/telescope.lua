local builtin = require('telescope.builtin')

require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { "node_modules", ".venv", "venv" }
 }
}


vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set("n", "<leader>fe", function()
  require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') })
end, { desc = "Find files in current file's dir" })
