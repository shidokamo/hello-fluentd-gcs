PROJECT_NAME := $(shell gcloud config get-value project)
BUCKET_NAME := ${PROJECT_NAME}-test-fluentd-gcs
LOG_INTEVAL =
export

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

# GCS
list:
	gsutil ls -r gs://${BUCKET_NAME}
rm:
	gsutil rm -r gs://${BUCKET_NAME}

