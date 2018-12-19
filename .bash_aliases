# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias deployr="cd ~/Development/deploy/ && ./deploy.sh"
alias deployl="cd ~/blog/ && jekyll serve & sleep 6 && xdg-open http://localhost:4000 & nautilus ~/blog/"

# pluckeye debug
alias pluckdebug="touch /tmp/pluckeye_url_log && tail /tmp/pluckeye_url_log"

#pluck pending
alias ppending="pluck export | grep '# at' "

##
#chmod /wwww
alias grantwww="sudo chown -R www-data:www-data /var/www/html/wiki && sudo chmod -R 770 /var/www/html/wiki"



