# find lines between *** and ***
/^\*..$/, /^\*..$/ {

# delete blank lines
/^$/d

# substitute Linux by Linux-Unix
s/Linux/Linux-Unix/

}
