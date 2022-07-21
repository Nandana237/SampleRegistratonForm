/*We can enhance simple shell script by using the following concepts
1. Variables
2. Filter like grep, cut, awk, and sed commands
3. Conditional statement
4. Loops
5. Functions and many more
6. cat /etc/shells
7. which $SHELL
*/

#!/bin/bash
httpd_v=$(httpd -v 2>&1 | awk -F '/' 'NR==1{print $2}' | awk '{print $1}')
httpd_s=$(systemctl status httpd | grep Active | awk '{print $2}')
httpd_p=$(cat /etc/httpd/conf/httpd.conf | grep ^Listen | awk '{print $2}')
echo "httpd version is: $httpd_v"
echo "The current Status of httpd is: $httpd_s"
echo "The port for httpd is: $httpd_p"
