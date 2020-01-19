#config
LOG_DIR="~/workspace/debug-dir/log"
GO_LOG_DIR_CMD="gologdir"

echo "alias "$GO_LOG_DIR_CMD"='cd "$LOG_DIR"'" >> ~/.bashrc

#change tmpdir for android build
export TMPDIR=/home/jayhou/tmp