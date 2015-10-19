# send a curl POST to the signaling server so we can track a student's progress of the installfest script.
# "LOG_INFO" gets gsubbed into the current scriptname and user info JSON
# $DATSIGNAL_URL can be found/edited in scripts/utils/script_env_vars.sh

curl -X POST -H "Content-Type:application/json" -d "LOG_INFO" $DATSIGNAL_URL

