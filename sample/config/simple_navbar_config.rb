# -*- encoding : utf-8 -*-
SimpleNavbar::Base.config do
   rule :engine_manager do
     nav :index, :name => '首页', :url => '/dashboard', html:{target: 'iframe_content'} do
       controller :'engine_manager/home'
     end

     nav :auth, :name => '注册', :url => '/auth', html:{target: 'iframe_content'} do
       controller :'play_auth/users'
     end
   end
end
