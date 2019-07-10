set fileformat=unix

let b:ale_fix_on_save = 1
let b:ale_fixers = ['black', 'remove_trailing_lines']
let b:ale_linters = ['black', 'add_blank_lines_for_python_control_statements', 'reorder-python-imports']
