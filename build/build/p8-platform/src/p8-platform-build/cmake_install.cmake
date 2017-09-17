# Install script for directory: /src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/src/kodi/pvr.iptvsimple.multi/build/build/depends")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-build/libp8-platform.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/p8-platform" TYPE FILE FILES "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/os.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/p8-platform/posix" TYPE FILE FILES
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/posix/os-socket.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/posix/os-threads.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/posix/os-types.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/p8-platform/sockets" TYPE FILE FILES
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/sockets/cdevsocket.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/sockets/socket.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/sockets/tcp.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/p8-platform/threads" TYPE FILE FILES
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/threads/atomics.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/threads/mutex.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/threads/threads.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/p8-platform/util" TYPE FILE FILES
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/util/atomic.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/util/buffer.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/util/StringUtils.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/util/StdString.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/util/timeutils.h"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform/src/util/util.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-build/p8-platform.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/p8-platform" TYPE FILE FILES "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-build/p8-platform-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
