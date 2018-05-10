upgrade:
    pip install -qr requirements/pip-tools.txt
    pip-compile --upgrade -o requirements/base.txt requirements/base.in
    pip-compile --upgrade -o requirements/testing.txt requirements/testing.in
    pip-compile --upgrade -o requirements/travis.txt requirements/travis.in
    pip-compile --upgrade -o requirements/aws.txt requirements/aws.in
    bash util/post-pip-compile.sh \
        requirements/aws.txt \
        requirements/base.txt \
        requirements/pip-tools.txt \
        requirements/testing.txt \
        requirements/travis.txt \
