package KA::RPC::Building::NaturalSpring;

use Moose;
use utf8;
no warnings qw(uninitialized);
extends 'KA::RPC::Building';

sub app_url {
    return '/naturalspring';
}

sub model_class {
    return 'KA::DB::Result::Building::Permanent::NaturalSpring';
}

no Moose;
__PACKAGE__->meta->make_immutable;

