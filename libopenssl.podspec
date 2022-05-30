PODNAME="libopenssl"
NAME="openssl"
VERSION="1.1.1m"

Pod::Spec.new do |s|
  s.name             = "#{PODNAME}"
  s.version          = "#{VERSION}"
  s.summary          = "A Pod Warper for #{NAME}."
  s.description      = "#{NAME} code base."

  s.homepage         = 'https://github.com/limitLiu/#{PODNAME}'
  s.license          = { :type => 'MIT', :text => 'LICENSE' }
  s.author           = { 'Limit' => 'limitliu@qq.com' }
  s.source           = { :http => "https://github.com/limitLiu/#{PODNAME}" }
  
  s.macos.deployment_target = '10.11'
  
  s.macos.preserve_paths      = "source/macos/#{s.version}/include"
  s.macos.header_mappings_dir = "source/macos/#{s.version}/include"

  s.macos.source_files       = "source/macos/#{s.version}/include/#{NAME}/*.h"
  s.macos.vendored_libraries = "source/macos/#{s.version}/lib/*.a"
end
