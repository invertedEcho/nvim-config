local dap = require('dap')
dap.adapters = {
  flutter = {
    command = 'flutter',
    args = {
      'debug_adapter',
    },
  },
}
dap.configurations = {
  dart = {
    name = 'Launch Dart Console Application',
    type = 'dart',
    request = 'launch',
    program = '${workspaceFolder}/lib/main.dart',
    cwd = '${workspaceFolder}',
  },
}

require('dap.ext.vscode').load_launchjs(nil, {})
