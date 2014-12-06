#!/bin/csh

set envs = (gh gt gr gv ga gp gc go)

foreach env ($envs)

    unalias $env
    unsetenv $env

end

echo ""
echo "    ...environment variables cleared"
echo ""

exit
