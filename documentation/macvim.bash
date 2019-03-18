$xec/open-macvim-tab.bash
open -a MacVim
mvim
mvim --remote-tab-silent
mvim -v                                                           # works in terminal


# v/vv: initialize macvim; open new window w/ tabs

# fails: a bunch of errors
$xec/open-macvim-tab.bash $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh

# works
open -a MacVim $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh

# fails: ...3 files to edit
mvim $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh

# works
mvim --remote-tab-silent $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh



# v: open new tab on the open window

# works
$xec/open-macvim-tab.bash ~/Desktop/vimrc.orig

# fails: opens new window
open -a MacVim ~/Desktop/vimrc.orig

# fails: opens new window
mvim ~/Desktop/vimrc.orig

# works
mvim --remote-tab-silent ~/Desktop/vimrc.orig



# vv: existing macvim; open new window w/ tabs

# fails: a bunch of errors
$xec/open-macvim-tab.bash $xec/create_password_full.pl $xec/create_password_string.pl $xec/create_password_abridged.pl

# works
open -a MacVim $xec/create_password_full.pl $xec/create_password_string.pl $xec/create_password_abridged.pl

# fails: ...3 files to edit
mvim $xec/create_password_full.pl $xec/create_password_string.pl $xec/create_password_abridged.pl

# fails: opens in same window as original
mvim --remote-tab-silent $xec/create_password_full.pl $xec/create_password_string.pl $xec/create_password_abridged.pl



# v: open new tab on 2nd open window

# fails: opens new tab in 1st window
$xec/open-macvim-tab.bash ~/Desktop/vimrc.orig

# works
$xec/open-macvim-tab.bash ~/Desktop/vimrc.orig 1

# fails: opens new window
open -a MacVim ~/Desktop/vimrc.orig

# fails: opens new window
mvim ~/Desktop/vimrc.orig

# fails: opens new tab in 1st window
mvim --remote-tab-silent ~/Desktop/vimrc.orig



# `````````````````````````````````````````````````````````````````



# v/vv: initialize macvim; open new window w/ tabs
open -a MacVim $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh
mvim --remote-tab-silent $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh

# v: open new tab on the open window
$xec/open-macvim-tab.bash ~/Desktop/vimrc.orig
mvim --remote-tab-silent ~/Desktop/vimrc.orig

# vv: existing macvim; open new window w/ tabs
open -a MacVim $xec/create_password_full.pl $xec/create_password_string.pl $xec/create_password_abridged.pl

# v: open new tab on 2nd open window
$xec/open-macvim-tab.bash ~/Desktop/vimrc.orig 1



# `````````````````````````````````````````````````````````````````



# v/vv: initialize macvim; open new window w/ tabs
vv $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh
# mvim --remote-tab-silent $xec/highlight-all.csh $xec/highlight-all.pl $xec/highlight-wp.csh

# v: open new tab on the open window
v ~/Desktop/vimrc.orig

# vv: existing macvim; open new window w/ tabs
vv $xec/create_password_full.pl $xec/create_password_string.pl $xec/create_password_abridged.pl

# v: open new tab on 2nd open window
v ~/Desktop/vimrc.orig 1
