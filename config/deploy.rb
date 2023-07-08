set :application, 'insta_app'
set :repo_url, 'git@github.com:anurag151995/instaapp.git'
set :branch, "main"
set :user, "ubuntu"
set :rails_env, 'staging'
set :deploy_to, "/home/ubuntu/insta_app"
set :deploy_via, :remote_cache
set :use_sudo, false
# set :passenger_restart_with_touch, true

set :ssh_options, {
  keys: %w(/home/yuva/Downloads/Test_staging.pem),
  forward_agent: true,
  user: 'ubuntu'
}

namespace :nginx do
  desc "restart nginx"
  task :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute "sudo kill $(cat /opt/nginx/logs/nginx.pid)"
        execute "sudo /opt/nginx/sbin/nginx"
      end
    end
  end
end
