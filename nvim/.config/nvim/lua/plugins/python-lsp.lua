return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            python = { -- <- BasedPyright and Pyright both accept this table
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true, -- allows “Add import …” & auto-imports
                diagnosticSeverityOverrides = { reportUndefinedVariable = "error" },
              },
            },
          },
        },

        -- pyright = {
        --   settings = {
        --     python = {
        --       analysis = {
        --         typeCheckingMode = "standard",
        --         autoImportCompletions = true,
        --         diagnosticSeverityOverrides = { reportUndefinedVariable = "error" },
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
