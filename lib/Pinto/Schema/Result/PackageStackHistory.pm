use utf8;
package Pinto::Schema::Result::PackageStackHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Pinto::Schema::Result::PackageStackHistory

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<package_stack_history>

=cut

__PACKAGE__->table("package_stack_history");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 stack

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 package

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 pin

  data_type: 'integer'
  default_value: null
  is_foreign_key: 1
  is_nullable: 1

=head2 created_revision

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 deleted_revision

  data_type: 'integer'
  default_value: null
  is_foreign_key: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "stack",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "package",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "pin",
  {
    data_type      => "integer",
    default_value  => \"null",
    is_foreign_key => 1,
    is_nullable    => 1,
  },
  "created_revision",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "deleted_revision",
  {
    data_type      => "integer",
    default_value  => \"null",
    is_foreign_key => 1,
    is_nullable    => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 created_revision

Type: belongs_to

Related object: L<Pinto::Schema::Result::Revision>

=cut

__PACKAGE__->belongs_to(
  "created_revision",
  "Pinto::Schema::Result::Revision",
  { id => "created_revision" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 deleted_revision

Type: belongs_to

Related object: L<Pinto::Schema::Result::Revision>

=cut

__PACKAGE__->belongs_to(
  "deleted_revision",
  "Pinto::Schema::Result::Revision",
  { id => "deleted_revision" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 package

Type: belongs_to

Related object: L<Pinto::Schema::Result::Package>

=cut

__PACKAGE__->belongs_to(
  "package",
  "Pinto::Schema::Result::Package",
  { id => "package" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 pin

Type: belongs_to

Related object: L<Pinto::Schema::Result::Pin>

=cut

__PACKAGE__->belongs_to(
  "pin",
  "Pinto::Schema::Result::Pin",
  { id => "pin" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 stack

Type: belongs_to

Related object: L<Pinto::Schema::Result::Stack>

=cut

__PACKAGE__->belongs_to(
  "stack",
  "Pinto::Schema::Result::Stack",
  { id => "stack" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07015 @ 2012-04-17 22:37:23
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uFck4OJ9sjl3TgXTwSVRDw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;