
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2018-09-20[Sep-Thu]16-12PM

Successfully built a332c33098d8
Successfully tagged brail347a22_web:latest
Recreating brail347a22_app_1 ... done
Recreating 4e68e62146c6_brail347a22_web_1 ... done
Attaching to brail347a22_app_1, brail347a22_web_1
app_1  | bundler: failed to load command: puma (/usr/local/bundle/bin/puma)
app_1  | Bundler::GitError: The git source git://github.com/cschiewek/devise_ldap_authenticatable.git is not yet checked out. Please run `bundle install` before trying to start your application
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/git/git_proxy.rb:224:in `allowed_in_path'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/git/git_proxy.rb:182:in `find_local_revision'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/git/git_proxy.rb:62:in `revision'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/git.rb:217:in `revision'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/git.rb:88:in `install_path'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/path.rb:121:in `expanded_path'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/path.rb:143:in `load_spec_files'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/git.rb:190:in `load_spec_files'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/path.rb:95:in `local_specs'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/source/git.rb:161:in `specs'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/definition.rb:665:in `block in converge_locked_specs'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/definition.rb:654:in `each'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/definition.rb:654:in `converge_locked_specs'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/definition.rb:243:in `resolve'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/definition.rb:174:in `specs'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/definition.rb:233:in `specs_for'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/definition.rb:222:in `requested_specs'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/runtime.rb:118:in `block in definition_method'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/runtime.rb:19:in `setup'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler.rb:99:in `setup'
app_1  |   /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.13.6/lib/bundler/setup.rb:20:in `<top (required)>'
app_1  |   /usr/local/lib/ruby/site_ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
app_1  |   /usr/local/lib/ruby/site_ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
web_1  | 2018/09/20 20:03:45 [emerg] 1#1: host not found in upstream "app:3000" in /etc/nginx/conf.d/default.conf:5
web_1  | nginx: [emerg] host not found in upstream "app:3000" in /etc/nginx/conf.d/default.conf:5
brail347a22_app_1 exited with code 1
brail347a22_web_1 exited with code 1
albe@pmdsdata4:/srv/dkr/brail347a22$



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
