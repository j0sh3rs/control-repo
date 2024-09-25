# @summary Base Rust Class
#
# @example Basic Usage
# include base::rust
class base::rust {
  rustup { 'j0sh3rs':
    toolchains => ['stable'],
  }
}
