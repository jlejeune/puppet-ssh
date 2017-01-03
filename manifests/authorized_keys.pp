#
# Mailops Team
#
# Class ssh::authorized_keys to create authorized keys on host
#

class ssh::authorized_keys (
    $keys = {}
){
  create_resources( 'ssh_authorized_key' , $keys )
}
