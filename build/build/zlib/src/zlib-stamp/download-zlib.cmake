message(STATUS "downloading...
     src='http://mirrors.xbmc.org/build-deps/sources/zlib-1.2.7.tar.gz'
     dst='/src/kodi/pvr.iptvsimple.multi/build/build/download/zlib-1.2.7.tar.gz'
     timeout='none'")




file(DOWNLOAD
  "http://mirrors.xbmc.org/build-deps/sources/zlib-1.2.7.tar.gz"
  "/src/kodi/pvr.iptvsimple.multi/build/build/download/zlib-1.2.7.tar.gz"
  SHOW_PROGRESS
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'http://mirrors.xbmc.org/build-deps/sources/zlib-1.2.7.tar.gz' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
