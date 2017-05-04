
Pod::Spec.new do |s|

  s.name         = "Guard"
  s.version      = "1.0.0"
  s.ios.deployment_target = '7.0'
  s.summary      = "Guard dealloc method."
  s.description  = "add block, when system call the dealloc, call this block first."
  s.homepage     = "https://github.com/giveMeHug/Guard"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "as_one" => "413890968@qq.com" }
  s.source       = { :git => "https://github.com/giveMeHug/Guard.git", :tag => s.version }
  s.source_files = "*.{h,m}"
  s.requires_arc = true
end
