FROM perl:5.30.0

RUN cpanm --notest \
    Path::Tiny \
    Test::Whitespaces \
    ;

COPY t/ /app/t/
COPY test_data/ /app/test_data/

WORKDIR /app/

CMD prove -l t/
