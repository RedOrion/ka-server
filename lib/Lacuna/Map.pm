package Lacuna::Map;

use Moose;
extends 'JSON::RPC::Dispatcher::App';

has simpledb => (
    is      => 'ro',
    required=> 1,
);

sub get_stars {
    my ($self, $session, $x1, $y1, $x2, $y2, $z) = @_;
    if ((abs($x2 - $x1) * abs($y2 - $y1)) > 100) {
        die [1003, 'Requested area too large.'];
    }
    else {
        my $stars = $self->simpledb->domain('star')->search({z=>$z, y=>['between', $y1, $y2], x=>['between', $x1, $x2]});
        my @out;
        while (my $star = $stars->next) {
            push @out, {
                name        => $star->name,
                x           => $star->x,
                y           => $star->y,
                z           => $star->z,
                color       => $star->color,
                alignments  => ["unprobed"],
                can_rename  => 1,
            };
        }
        return \@out;
    }
}

__PACKAGE__->register_rpc_method_names(qw(get_stars));

no Moose;
__PACKAGE__->meta->make_immutable;

