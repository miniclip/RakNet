# Changelog
All notable changes to this project (fork) will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project (fork) adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html)
since version 4.1.0.

## [4.3.2] - 2019-06-19
### Fixed
- android arm64 compilation error [Alexandre Freitas]

## [4.3.1] - 2019-06-14
### Fixed
- very slow RakPeer::Startup() calls (lasting 5 seconds or more)
  on recent versions of macOS due to local machine names
  having become unresolvable in most setups

## [4.3.0] - 2019-01-08
### Added
- support for customizing RakPeer UDP socket buffer sizes on GNU/Linux and macOS
  (or any other platform for which RakNet uses Berkeley sockets.)

## [4.2.0] - 2018-09-06
### Added
- ability of building on Android
- ability of building on iOS

## [4.1.0] - 2018-08-30
### Fixed
- broken reassembly of fragmented packets [Joerg Boehnel]
- build errors on macOS+clang
