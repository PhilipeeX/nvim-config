local dap = require "dap"

-- Configuração para Node.js (TypeScript)
dap.adapters.node = {
  type = "executable",
  command = "node",
  args = { os.getenv "HOME" .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
}

dap.configurations.typescript = {
  {
    type = "node",
    request = "launch",
    name = "Launch Program",
    runtimeExecutable = "ts-node",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
  },
}
