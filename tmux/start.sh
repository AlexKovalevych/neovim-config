tmux new-session -s ehealth -d
tmux new-window -n il -d
tmux new-window -n ops -d
tmux new-window -n mpi -d
tmux new-window -n reports -d
tmux new-window -n otp_verification -d
tmux new-window -n mithril -d
tmux new-window -n psql -d
tmux new-window -n port-forward -d

tmux send-keys -t ehealth:il 'cd ~/Sites/ehealth.api' C-m
tmux send-keys -t ehealth:ops 'cd ~/Sites/ops.api' C-m
tmux send-keys -t ehealth:mpi 'cd ~/Sites/mpi.api' C-m
tmux send-keys -t ehealth:reports 'cd ~/Sites/reports.api' C-m
tmux send-keys -t ehealth:otp_verification 'cd ~/Sites/otp_verification.api' C-m
tmux send-keys -t ehealth:mithril 'cd ~/Sites/mithril.api' C-m

tmux new-session -s moneysend -n moneysend -d
tmux send-keys -t moneysend:moneysend 'cd ~/Sites/moneysend.api' C-m
