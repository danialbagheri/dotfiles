local builtin = require('telescope.builtin')


require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { "node_modules", ".venv", "venv" }
 }
}
require('telescope').load_extension("live_grep_args")


vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({
        hidden = true,
    })
end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<D-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>pg', function()
	builtin.grep_string({
        search = vim.fn.input("Grep > "),
        hidden = true,
        additional_args = function()
            return { "--hidden", "--no-ignore" }
        end
    });
end)

vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })

vim.keymap.set("n", "<leader>as",
    ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>"
)

vim.keymap.set("n", "<leader>fe", function()
  require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') })
end, { desc = "Find files in current file's dir" })
