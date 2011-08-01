#!/usr/bin/perl

package Atomia::Bindings::CoreAPI::Account;

use Moose;

has 'element_name' => (is => 'rw', isa => 'Str', default => 'account');
has 'name' => (is => 'rw', isa => 'Str');

sub serialize {
	my $self = shift;
	return SOAP::Data->name($self->element_name, $self->name)->type('string');
}

1;
