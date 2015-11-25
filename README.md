# EngineManager
这是一个用于管理组件的组件，提供一个后台，可以整合各组件的管理页面，实现统一管理。

## 安装

添加此行至 Gemfile:


```ruby
gem 'engine_manager', github: 'mindpin/engine_manager'
gem 'engine_manager', github: 'mindpin/engine_manager'
```

然后运行:
```shell
bundle
```


## 使用说明
运行生成 simple-navbar 配置文件
```shell
rails g simple_navbar_config config
```

编辑生成配置文件 **config/simple_navbar_config.rb**

```ruby
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
```

以上可以替换为你所需要的名称、链接、controller，但是 **target: 'iframe_content'** 必须保证存在，否则显示会不正常。

编辑 **config/routes.rb** , 给 engine_manager 设置你想要的路径
```ruby
  EngineManager::Routing.mount '/manager', :as => 'engine_manager'
```

访问 **/manager** 即可看到管理页面。

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mindpin/engine_manager. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

