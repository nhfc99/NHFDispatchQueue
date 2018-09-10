Pod::Spec.new do |s|
    s.name         = "NHFDispatchQueue"
    s.version      = "1.0.1"
    s.summary      = "GCD中队列等集合操作"
    s.homepage     = "https://github.com/nhfc99/NHFDispatchQueue.git"
    s.license      = "MIT"
    s.author       = {"nhfc99"=>"nhfc99@163.com"}
    s.platform     = :ios, '8.0'
    s.ios.deployment_target = '8.0'
    s.source       = {:git => "https://github.com/nhfc99/NHFDispatchQueue.git",:tag => s.version.to_s}
    s.requires_arc = true
    s.public_header_files = ['Classes/*.h']
    s.frameworks = 'QuartzCore','CoreData','Foundation','UIKit'
    s.subspec 'NHFCustomDispatchQueue' do |ss|
        ss.source_files = 'Classes/**/*.{h,m}'
        ss.public_header_files = 'Classes/**/*.h'
    end
    s.subspec 'NHFOperationQueue' do |ss|
        ss.source_files = 'Classes/**/*.{h,m}'
        ss.public_header_files = 'Classes/**/*.h'
    end
    s.subspec 'NHFTaskGroupQueue' do |ss|
        ss.source_files = 'Classes/**/*.{h,m}'
        ss.public_header_files = 'Classes/**/*.h'
    end
end
