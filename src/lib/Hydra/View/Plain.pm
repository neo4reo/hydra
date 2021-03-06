package Hydra::View::Plain;

use strict;
use warnings;
use base 'Catalyst::View::Download::Plain';

sub process {
    my ($self, $c) = @_;
    $c->response->content_type('text/plain; charset=utf-8') unless $c->response->content_type() ne "";
    $c->response->body($c->stash->{plain}->{data});
}

1;
