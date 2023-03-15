#
#  Be sure to run `pod spec lint FMDB.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "FMDB-isExecutingStatement"
  s.module_name = "FMDB"


  s.description  = <<-DESC
  同步fmdb官方tag2.7.5;
                   DESC

  s.version = '2.7.6'
  s.summary = 'fmdb for 2.7.5'
  s.homepage = 'https://github.com/myappcloud/FMDB-isExecutingStatement'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "longzh" => "longzh@mysoft.com.cn" }
  s.source           = { :git => 'https://github.com/myappcloud/FMDB-isExecutingStatement.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.default_subspec = 'standard' 
  s.ios.deployment_target = '8.0'


  # use the built-in library version of sqlite3
  s.subspec 'standard' do |ss|
    ss.library = 'sqlite3'
    ss.source_files = 'src/fmdb/FM*.{h,m}'
    ss.exclude_files = 'src/fmdb.m'
  end

  # use the built-in library version of sqlite3 with custom FTS tokenizer source files
  # s.subspec 'FTS' do |ss|
  #   ss.source_files = 'src/extra/fts3/*.{h,m}'
  #   ss.dependency 'FMDB/standard'
  # end

  # # build the latest stable version of sqlite3
  # s.subspec 'standalone' do |ss|
  #   ss.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -DFMDB_SQLITE_STANDALONE' }
  #   ss.dependency 'sqlite3'
  #   ss.source_files = 'src/fmdb/FM*.{h,m}'
  #   ss.exclude_files = 'src/fmdb.m'
  # end

  # # build with FTS support and custom FTS tokenizer source files
  # s.subspec 'standalone-fts' do |ss|
  #   ss.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -DFMDB_SQLITE_STANDALONE' }
  #   ss.source_files = 'src/fmdb/FM*.{h,m}', 'src/extra/fts3/*.{h,m}'
  #   ss.exclude_files = 'src/fmdb.m'
  #   ss.dependency 'sqlite3/fts'
  # end

  # use SQLCipher and enable -DSQLITE_HAS_CODEC flag
  # s.subspec 'SQLCipher' do |ss|
  #   ss.dependency 'SQLCipher'
  #   ss.source_files = 'src/fmdb/FM*.{h,m}'
  #   ss.exclude_files = 'src/fmdb.m'
  #   ss.xcconfig = { 'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DHAVE_USLEEP=1', 'HEADER_SEARCH_PATHS' => 'SQLCipher' }
  # end
  

end
