local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

--vim.cmd('highlight mygroup guifg=#8b0000 guibg=#ffffff')
vim.cmd('highlight mygroup guifg =  #fca021')

dashboard.section.header.val = {

                                          
  [[   ⢀⣀⣤⣀⣀                                ]],   
  [[ ⢠⣾⣿⠿⠿⠿⣿⣿⣆                              ]],
  [[⢠⣿⡟⠁   ⢹⣿⣿                              ]],
  [[⣿⡿⢀⡀  ⢀⣾⣿⡿                              ]],
  [[⢻⣇⠋⢻⣧ ⣼⣿⣿⠇                              ]],
  [[ ⠙⠛⠛⠃⢠⣿⣿⡟                               ]],
  [[     ⢸⣿⣿⣧              ⢀⣀⣀⣠⣴⣶⣶⣶⣶⣄       ]],
  [[     ⠘⣿⣿⣿⣷⣄  ⣀⣀⣤⣤⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁      ]],
  [[      ⠘⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇      ]],
  [[       ⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⠋⠉⠉⠁       ]],
  [[       ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣿⣿⣿⣫⣾⣿⣿⣿⣿⣿⣿⣆⡀         ]],
  [[       ⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣍⣽⣿⣿⣿⡟⠋⠉⠹⣿⣿⣿⣿⣷⣦⣄⣀ ⢀⣀⣤⡀]],
  [[       ⠸⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⠿⣿⣿⣿⣧    ⠈⠉⠛⠛⠛⠿⠿⠿⠿⠿⠓⠋]],
  [[    ⢀⣀⣤⣴⣿⣿⣿⡇   ⣼⣿⣿⡏ ⠹⣿⣿⣿⡀               ]],
  [[  ⣰⣿⣿⣿⣿⣿⠿⠿⠛⠁  ⣸⣿⣿⡿   ⠻⣿⣿⣇               ]],
  [[  ⣿⣿⣿        ⢰⣿⣿⡟⠁⢀⣀⣀ ⠹⣿⣿⣄              ]],
  [[  ⠻⠟⠛⠁       ⣾⣿⣿⣿⠿⠿⠿⠛  ⠉⣿⣿⠇             ]],
  [[             ⠉⠉         ⠛⠋              ]],
                                        
}	


dashboard.section.header.opts.hl = "MyGroup" 
-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "+ New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "+ Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
    dashboard.button( "r", "+ Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "+ Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "+ Quit NVIM", ":qa<CR>"),
}


-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
