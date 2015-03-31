require "sink_utility/version"
require "yaml/store"

module SinkUtility
  class Initialize
    def bitbucket
      `git remote rename origin bitbucket`
    end
    def github
      `git remote rename origin github`
    end
    def remote_add(repo_type, username, repo_name)
      store = YAML::Store.new("data.yml")
      case repo_type.downcase
        when "github"
          `git remote add bitbucket git@bitbucket.org:#{username}/#{repo_name}.git`
           store.transaction do
            store[:setup_complete] = true
          end 
        when "bitbucket"
          `git remote add github git@github.com/#{username}/#{repo_name}.git`
          store.transaction do
            store[:setup_complete] = true
          end 
        else
          puts "Invalid repo type"
      end
    end
  end
  class User
    def setup(username)
      case ARGV[1]
        when "bitbucket"
          store = YAML::Store.new("data.yml")
          store.transaction do
            store[:bitbucket_user] = username
          end
        when "github"
          store = YAML::Store.new("data.yml")
          store.transaction do
            store[:github_user] = username
          end  
        else
          puts "Please specify either github or bitbucket"
      end
    end
    def current_users
      store = YAML::Store.new("data.yml")
      current_users = []
      current_users << "Bitbucket: " + store.transaction { store[:bitbucket_user] } if store.transaction { store[:bitbucket_user] }
      current_users << "Github: " + store.transaction { store[:github_user] } if store.transaction { store[:github_user] }
      return current_users
    end
  end
end
