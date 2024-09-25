# Class: base::apt::packages
#
#
class base::apt::packages {
  $install_packages = [
    'git',
    'vim',
    'libbpf1',
    'libbpf-tools',
    'libbpfcc-dev',
    'libbpfcc',
    'libbpf-dev',
    'libcap2',
    'libcap2-bin',
    'libcap-dev',
    'libnl-3-dev',
    'libnl-3-200',
    'clang',
    'clang-tools',
    'python3-docutils',
    'llvm',
    'llvm-18-tools',
    'llvm-18',
    'llvm-18-dev',
    'llvm-18-linker-tools',
    'llvm-18-runtime',
    'libnl-genl-3-dev',
    'libnl-genl-3-200',
    'libnl-route-3-200',
    'libnl-route-3-dev',
    'make',
    'linux-tools-generic',
    'linux-cloud-tools-generic',
    'nfs-common',
    'open-iscsi',
    'nvme-cli',
    'rbenv',
    'ripgrep'
  ]

  stdlib::ensure_packages($install_packages, { 'ensure' => 'latest'})

  # exec { 'install rust':
  #   path    => ['/usr/bin'],
  #   command => "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -q -y",
  #   creates => '/home/j0sh3rs/.cargo/bin/cargo',
  #   user    => 'j0sh3rs',
  #   group   => 'j0sh3rs'
  # }

  exec { 'install atuin':
    path        => ['/usr/bin'],
    command     => "curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh/ | sh -s -- -q",
    creates     => '/home/j0sh3rs/.atuin/bin/atuin',
    environment => ['HOME=/home/j0sh3rs'],
    user        => 'j0sh3rs',
    group       => 'j0sh3rs'
  }

  exec { 'install flux':
    path        => ['/usr/bin'],
    command     => "curl -s https://fluxcd.io/install.sh | bash",
    creates     => '/usr/local/bin/flux'
  }
}
