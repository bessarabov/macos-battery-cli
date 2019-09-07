FROM perl:5.30.0

RUN cpanm --notest \
    Test::Whitespaces \
    ;

COPY t/ /app/t/

WORKDIR /app/
