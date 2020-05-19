# ~/.bash_logout: executed by bash(1) when login shell exits.

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
	[ -x ~/bin/confirm_daily_task ] && confirm_daily_tasks
fi

