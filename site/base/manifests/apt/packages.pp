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
    'open-isci',
    'nvme-cli',
    'ripgrep',
    'rust-lldb',
    'rustc'
  ]

  stdlib::ensure_packages($install_packages, { 'ensure' => 'latest'})
}
