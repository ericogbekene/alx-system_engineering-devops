-- configuring ssh
puppet module install saz-ssh --version 11.2.0
class { 'ssh':
  users_client_options => {
    'ubuntu' => {
      options => {
        'Host *' => {
          'IdentityFile' => '~/.ssh/school',
          'PasswordAuthentication' => 'no',
        },
      },
    },
  },
}

