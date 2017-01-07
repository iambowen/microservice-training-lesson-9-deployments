include 'docker'

docker::run { 'ciao':
  image   => 'iambowen/ciao:alpine',
  ports   => "8088:80"
}