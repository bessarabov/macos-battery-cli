use Test::Whitespaces {

    dirs => [
        '/data/',
    ],

    ignore => [
        qr{^/data/ci/test_data/},
    ],

};
