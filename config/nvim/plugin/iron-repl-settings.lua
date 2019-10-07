local iron = require('iron')

iron.core.add_repl_definitions {
  coconut = {
    coconut = {
      command = {"coconut"}
    }
  },
  hy = {
    hy = {
      command = {"hy"}
    }
  }
}

iron.core.set_config {
  preferred = {
    coconut = "coconut",
    hy = "hy"
  }
}
