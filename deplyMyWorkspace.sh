#!/bin/bash
#config
LOG_DIR="~/workspace/debug-dir/log"
GO_LOG_DIR_CMD="gologdir"
BASHRC_FILE=~/bash_test
TMPDIR=~/tmp
echo $BASHRC_FILE
echo "# uncomment for a colored prompt, if the terminal has the capability; turned" >> $BASHRC_FILE
echo "# off by default to not distract the user: the focus in a terminal window" >> $BASHRC_FILE
echo "# should be on the output of commands, not on the prompt" >> $BASHRC_FILE
echo "#force_color_prompt=yes" >> $BASHRC_FILE
echo "" >> $BASHRC_FILE
echo "if [ -n \"$force_color_prompt\" ]; then" >> $BASHRC_FILE
echo "    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then" >> $BASHRC_FILE
echo "	# We have color support; assume it's compliant with Ecma-48" >> $BASHRC_FILE
echo "	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such" >> $BASHRC_FILE
echo "	# a case would tend to support setf rather than setaf.)" >> $BASHRC_FILE
echo "	color_prompt=yes" >> $BASHRC_FILE
echo "    else" >> $BASHRC_FILE
echo "	color_prompt=" >> $BASHRC_FILE
echo "    fi" >> $BASHRC_FILE
echo "fi" >> $BASHRC_FILE
echo "" >> $BASHRC_FILE
echo "if [ \"$color_prompt\" = yes ]; then" >> $BASHRC_FILE
echo "    PS1=\'${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ \'" >> $BASHRC_FILE
echo "else" >> $BASHRC_FILE
echo "    PS1=\'${debian_chroot:+($debian_chroot)}\u@\h:\w\n\$ \'" >> $BASHRC_FILE
echo "fi" >> $BASHRC_FILE
echo "unset color_prompt force_color_prompt" >> $BASHRC_FILE

echo "alias "$GO_LOG_DIR_CMD"='cd "$LOG_DIR"'" >> $BASHRC_FILE

#change tmpdir for android build
echo "export TMPDIR="$TMPDIR >> $BASHRC_FILE