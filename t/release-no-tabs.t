
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.09

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Net/Async/Webservice/DHL.pm',
    'lib/Net/Async/Webservice/DHL/Address.pm',
    'lib/Net/Async/Webservice/DHL/Exception.pm',
    'lib/Net/Async/Webservice/DHL/Types.pm',
    't/data/address',
    't/data/address-bad',
    't/data/address-productcode',
    't/data/route-request',
    't/data/route-request-bad',
    't/dhl-live-sync.t',
    't/dhl-live.t',
    't/dhl-offline.t',
    't/lib/Test/Net/Async/Webservice/DHL.pm',
    't/lib/Test/Net/Async/Webservice/DHL/Factory.pm',
    't/lib/Test/Net/Async/Webservice/DHL/NoNetwork.pm',
    't/lib/Test/Net/Async/Webservice/DHL/Tracing.pm',
    't/xml-schema.t'
);

notabs_ok($_) foreach @files;
done_testing;
