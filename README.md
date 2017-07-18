# bash.d

A set of scripts that run on startup. Specific to me - don't user. These are activated by adding
the following snippet to your `~/.bashrc` file.

		_source_files=`ls $HOME/.bash.d/*.sh`
		for f in $_source_files
		do
		  source $f
		done
		unset _source_files
