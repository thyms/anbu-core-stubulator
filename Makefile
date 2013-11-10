# type 'make -s list' to see list of targets.

run-app:
	play -Dhttp.port=8001 run

test-app:
	echo 'No test to run for this project'

test-app-ci:
	echo 'No test to run for this project'

setup-app:
	echo 'No configuration to setup for this project'
	git remote add stubulator01 git@heroku.com:anbu-core-stub01.git

setup-heroku:
	heroku apps:create --remote stubulator01 --app anbu-core-stub01
	heroku config:add APP_ENV=stubulator01   --app anbu-core-stub01

.PHONY: no_targets__ list
no_targets__:
list:
	sh -c "$(MAKE) -p no_targets__ | awk -F':' '/^[a-zA-Z0-9][^\$$#\/\\t=]*:([^=]|$$)/ {split(\$$1,A,/ /);for(i in A)print A[i]}' | grep -v '__\$$' | sort"
