if status is-interactive
    # Commands to run in interactive sessions can go here
    bass source /opt/ros/noetic/setup.bash
    jp2a --background=light ~/Pictures/gibbon9.png 
    cowsay -d "Welcome to gibbon"

    if [ -f $HOME/.config/fish/alias.fish ]
      source $HOME/.config/fish/alias.fish
    end

    if status is-interactive
    and not set -q TMUX
        exec tmux
    end
end
