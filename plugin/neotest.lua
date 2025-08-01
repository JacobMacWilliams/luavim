local neotest = require("neotest")
neotest.setup({
  adapters = {
    require("neotest-python")({
        -- Extra arguments for nvim-dap configuration
        -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
        -- dap = { justMyCode = false },
        -- Command line arguments for runner
        -- Can also be a function to return dynamic values
        args = {"--log-level", "DEBUG"},
        -- Runner to use. Will use pytest if available by default.
        -- Can be a function to return dynamic value.
        runner = "pytest",
        -- Custom python path for the runner.
        -- Can be a string or a list of strings.
        -- Can also be a function to return dynamic value.
        -- If not provided, the path will be inferred by checking for 
        -- virtual envs in the local directory and for Pipenev/Poetry configs
        python = ".venv/bin/python",
        -- Returns if a given file path is a test file.
        -- NB: This function is called a lot so don't perform any heavy tasks within it.
        -- is_test_file = function(file_path)
          -- ...
        -- end,
        -- !!EXPERIMENTAL!! Enable shelling out to `pytest` to discover test
        -- instances for files containing a parametrize mark (default: false)
        pytest_discover_instances = true,
    }),
	-- require("neotest-plenary"),
	-- require("neotest-vim-test")({
		-- ignore_file_types = { "python", "vim", "lua"}
	-- }),
  },
})

--test run
vim.keymap.set("n", "<leader>tr", function() neotest.run.run() end)
--test stop
vim.keymap.set("n", "<leader>ts", function() neotest.run.stop() end)
--test last
vim.keymap.set("n", "<leader>tl", function() neotest.run.run_last() end)
--test file
vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end)
--test all
vim.keymap.set("n", "<leader>ta", function() neotest.run.run({suite=true}) end)
--test buffer
vim.keymap.set("n", "<leader>tb", function() neotest.summary.toggle() end)
--test output
vim.keymap.set("n", "<leader>to", function() neotest.output.open({enter=true}) end)
--test watch
vim.keymap.set("n", "<leader>tw", function() neotest.watch.toggle() end)
