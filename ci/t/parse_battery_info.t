use strict;
use warnings FATAL => 'all';
use feature 'say';
use utf8;
use open qw(:std :utf8);

use JSON::PP;
use Test::More tests => 1;
use Path::Tiny;

require '/data/battery';

foreach my $file_name (glob '/app/test_data/*') {
    my $content = path($file_name)->slurp_utf8();
    my ($input, $json) = split /---\n/, $content;
    my $output = decode_json $json;

    is_deeply(
        parse_battery_info($input),
        $output,
    );

}
