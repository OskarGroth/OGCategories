Pod::Spec.new do |s|

s.name              = 'OGCategories'
s.version           = '1.1'
s.summary           = 'Common Cocoa categories'
s.homepage          = 'https://github.com/OskarGroth/OGCategories'
s.license           = {
:type => 'MIT',
:file => 'LICENSE'
}
s.author            = {
'Oskar Groth' => 'oskar@cindori.org'
}
s.source            = {
:git => 'https://github.com/OskarGroth/OGCategories.git',
:tag => s.version.to_s
}
s.platform     = :osx, '10.9'
s.source_files = 'OGCategories/Categories/*.{swift}'
s.requires_arc = true
s.screenshot   = ""
s.social_media_url = "https://twitter.com/cindoriapps"

end
