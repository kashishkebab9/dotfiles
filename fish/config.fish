if status is-interactive
    # Commands to run in interactive sessions can go here
    bass source /opt/ros/noetic/setup.bash
    export TURTLEBOT3_MODEL=waffle_pi
    source /opt/ros/noetic/share/rosbash/rosfish

    set_color white

    printf '     ⢀⣀⣤⣀⣀                                  \n'   
    printf '   ⢠⣾⣿⠿⠿⠿⣿⣿⣆                                \n'
    printf '  ⢠⣿⡟⠁   ⢹⣿⣿                                \n'
    printf '  ⣿⡿⢀⡀  ⢀⣾⣿⡿                                \n'
    printf '  ⢻⣇⠋⢻⣧ ⣼⣿⣿⠇                                \n'
    printf '   ⠙⠛⠛⠃⢠⣿⣿⡟                                 \n'
    printf '       ⢸⣿⣿⣧              ⢀⣀⣀⣠⣴⣶⣶⣶⣶⣄         \n'
    printf '       ⠘⣿⣿⣿⣷⣄  ⣀⣀⣤⣤⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁        \n'
    printf '        ⠘⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇        \n'
    printf '         ⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⠋⠉⠉⠁         \n'
    printf '         ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣿⣿⣿⣫⣾⣿⣿⣿⣿⣿⣿⣆⡀           \n'
    printf '         ⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣍⣽⣿⣿⣿⡟⠋⠉⠹⣿⣿⣿⣿⣷⣦⣄⣀ ⢀⣀⣤⡀  \n'
    printf '         ⠸⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⠿⣿⣿⣿⣧    ⠈⠉⠛⠛⠛⠿⠿⠿⠿⠿⠓⠋  \n'
    printf '      ⢀⣀⣤⣴⣿⣿⣿⡇   ⣼⣿⣿⡏ ⠹⣿⣿⣿⡀                 \n'
    printf '    ⣰⣿⣿⣿⣿⣿⠿⠿⠛⠁  ⣸⣿⣿⡿   ⠻⣿⣿⣇                 \n'
    printf '    ⣿⣿⣿        ⢰⣿⣿⡟⠁⢀⣀⣀ ⠹⣿⣿⣄                \n'
    printf '    ⠻⠟⠛⠁       ⣾⣿⣿⣿⠿⠿⠿⠛  ⠉⣿⣿⠇               \n'
    printf '               ⠉⠉         ⠛⠋                \n'
    set_color normal
    fish_add_path -v ~/.local/bin/
    if [ -f $HOME/.config/fish/alias.fish ]
      source $HOME/.config/fish/alias.fish
    end

    if [ -f "/proc/1/cgroup" ] && grep -q "podman" "/proc/1/cgroup"; then
      echo "Running inside a Podman container."
    else
      if status is-interactive
      and not set -q TMUX
          exec tmux
      end
      echo "Not running inside a Podman container."
    end 
end
