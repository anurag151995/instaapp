role :app, %w{ec2-35-153-75-47.compute-1.amazonaws.com}
role :web, %w{ec2-35-153-75-47.compute-1.amazonaws.com}
role :db,  %w{ec2-35-153-75-47.compute-1.amazonaws.com}

server 'ec2-35-153-75-47.compute-1.amazonaws.com', roles: %w{web app db}, my_property: :my_value
