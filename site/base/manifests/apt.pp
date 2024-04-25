class base::apt {
  class { 'apt':
    update => {
      frequency => 'daily',
    }
  }
}
