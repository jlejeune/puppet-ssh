#
# Mailops team
#
# Create keys
#

class ssh::keys (
  $keys = {}
){

  File {
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
  }

  create_resources( 'file', $keys )
}
