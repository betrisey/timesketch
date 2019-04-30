#!/usr/bin/env bash
#
# This file is generated by l2tdevtools update-dependencies.py any dependency
# related changes should be made in dependencies.ini.

# Exit on error.
set -e

# Dependencies for running timesketch, alphabetized, one per line.
# This should not include packages only required for testing or development.
PYTHON2_DEPENDENCIES="python-alembic
                      python-altair
                      python-amqp
                      python-aniso8601
                      python-asn1crypto
                      python-attr
                      python-bcrypt
                      python-billiard
                      python-blinker
                      python-bs4
                      python-celery
                      python-certifi
                      python-cffi
                      python-chardet
                      python-click
                      python-configparser
                      python-cryptography
                      python-datasketch
                      python-dateutil
                      python-editor
                      python-elasticsearch
                      python-entrypoints
                      python-enum34
                      python-flask
                      python-flask-bcrypt
                      python-flask-login
                      python-flask-migrate
                      python-flask-restful
                      python-flask-script
                      python-flask-sqlalchemy
                      python-flask-wtf
                      python-gunicorn
                      python-idna
                      python-ipaddress
                      python-itsdangerous
                      python-jinja2
                      python-jsonschema
                      python-jwt
                      python-kombu
                      python-mako
                      python-markupsafe
                      python-neo4jrestclient
                      python-numpy
                      python-pandas
                      python-parameterized
                      python-pycparser
                      python-pyrsistent
                      python-redis
                      python-requests
                      python-six
                      python-sqlalchemy
                      python-toolz
                      python-typing
                      python-tz
                      python-urllib3
                      python-vine
                      python-werkzeug
                      python-wtforms
                      python-yaml";

# Additional dependencies for running tests, alphabetized, one per line.
TEST_DEPENDENCIES="python-coverage
                   python-flask-testing
                   python-funcsigs
                   python-mock
                   python-nose
                   python-pbr";


sudo add-apt-repository ppa:gift/dev -y
sudo apt-get update -q
sudo apt-get install -y ${PYTHON2_DEPENDENCIES}

if [[ "$*" =~ "include-test" ]]; then
    sudo apt-get install -y ${TEST_DEPENDENCIES}
fi
