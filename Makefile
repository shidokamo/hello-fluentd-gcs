LOG_INTEVAL =
export LOG_INTERVAL

default:build push

install:
	pipenv install
	gem install fluent-plugin-insert-id
	gem install fluent-plugin-gcs

# Local debug
log:
	pipenv run python -u hello.py
fluentd:
	fluentd -c fluent.conf
clean:
	-rm -rf *.log*
	-rm -rf country

