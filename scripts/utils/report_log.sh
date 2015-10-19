# send a curl POST to the signaling server so we can track a student's progress of the installfest script.

# $DATSIGNAL_URL can be found/edited in scripts/utils/script_env_vars.sh

curl -X POST -H "Content-Type:application/json" -d { "progress":"step" } $DATSIGNAL_URL

