TO=$1
SUBJECT=$2
TEXT=$3

echo "$TEXT" | /home/nailbiter/bin/mail.pl -s "$SUBJECT" $TO
