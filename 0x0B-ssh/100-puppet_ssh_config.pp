# configuring ssh config file using puppet
puppet module install saz-ssh --version 11.2.0
class { 'ssh':
  users_client_options => {
    'ericomedia' => {
      options => {
        'Host *' => {
          'IdentityFile' => '~/.ssh/school',
          'PasswordAuthentication' => 'no',
        },
      },
    },
  },
}

