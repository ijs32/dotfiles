return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.dbs = {
      { name = 'dev', url = 'mysql://isilber:'.. os.getenv('DEV_DB_PASSWORD') ..'@192.168.1.46:3306/contractmgr_hps_test' },
      { name = 'prod', url = 'mysql://isilber:'.. os.getenv('DEV_DB_PASSWORD') ..'@192.168.1.46:3306/contractmgr_hps_test' },
    }
  end,
}
