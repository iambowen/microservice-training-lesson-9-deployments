
docker_service 'default' do
  action [:create, :start]
end

docker_image 'ciao' do
  repo 'iambowen/ciao'
  tag 'alpine'
  action :pull
end

docker_container 'ciao' do
  repo 'iambowen/ciao'
  tag 'alpine'
  port '8088:80'
end
