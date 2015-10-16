## ABOUT
Useful bash scripts for MSYS users

Some utils requires context (environment variables). Ex. GITUSER for bb* utils, SVN_REPOS for csvn* utils, etc.

My advice - use Conemu and extend PATH var to easy lunch utils in CLI

### INSTALL (BASH):
	clone https://github.com/bisoff/utils.git utils
	cd utils
	pathadd "$PWD"

### INSTALL (CMD):

	clone https://github.com/bisoff/utils.git utils
	cd utils
	bash -c "pathadd '%CD%'"

if bash is not in PATH then use:

	path\to\bash.exe -c "pathadd '%CD%'"

### REVIEW
#### Environment tools

- var* 		- add, drop and enlist (sorted) environment variables in user's context
- path* 	- add, drop and enlist (sorted) pathes in PATH variable (add/drop in user's context, enlist in user, system and commin context)

#### VCS tools

- bb* 		- for rapid drop/add/clone/rename/enlist remote repo and ssh key for BITBUCKET
- csvn*		- for rapid add/clone/enlist remote repo for local CollabNet Subversion Edge repo
- g*		- aliases for lunch GIT commands (ex. for button bar in Total Commander)
- sek/sok 	- for rapid update/commit whole SVN repo (used in button bar in Total Commander)
- sw-svn		- switch svn version by renaming folder if you use some versions of CLI svn.
		  ex. old version of CLI svn that compatible with GUI client, like SmartSVN and last CLI version of svn for new projects/repos
		  this is more convenient than replace PATH var, imho
- sw-git		- switch git version by renaming folder if you use some versions of CLI git.
		  warning: to use it correctly (w/o context loose) run it as ". sw-git" and reopen shell

#### File system

- cp-files	- enlist file type of files in path, passed in param (used to define code page of plain text files)
- cp-convert	- converts to UTF-8 plain text files, with type ANSI-8859 (path passed in param)
		  used to store CP1251 files in git repo with auto detect code page feature
- fget		- a la wget by powershell
- fwsize	- enlist subfolders size in kb

#### Other

- today		- print to stdout today with time in German format for current timezone
- pause		- a la windows
- ed		- edit file in editor; ($EDITOR - path to editor, setuped in ~/.bash_profile); file lookuped in PATH by 'where' command
		  used for rapid open of script file
- mc*		- open windows management tool from CLI
		 (defined tools: computer props, device managment, environment vars, event, shares, services, scheduled tasks, users & groups, password)
- cfg-*		- save application config in user repo or set config from repo
		  (defined: msysgit, sublime)
