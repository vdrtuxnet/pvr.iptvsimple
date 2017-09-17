# Install script for directory: /src/kodi/pvr.iptvsimple.multi

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/src/kodi/xbmc/addons")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pvr.iptvsimple.multi-2.4.14")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/./" TYPE DIRECTORY FILES "/src/kodi/pvr.iptvsimple.multi/pvr.iptvsimple.multi" REGEX "/xml\\.in$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "pvr.iptvsimple.multi-2.4.14")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pvr.iptvsimple.multi/pvr.iptvsimple.multi.so.2.4.14"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pvr.iptvsimple.multi/pvr.iptvsimple.multi.so.17.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pvr.iptvsimple.multi/pvr.iptvsimple.multi.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/pvr.iptvsimple.multi" TYPE SHARED_LIBRARY FILES
    "/src/kodi/pvr.iptvsimple.multi/build/pvr.iptvsimple.multi-prefix/src/pvr.iptvsimple.multi-build/pvr.iptvsimple.multi.so.2.4.14"
    "/src/kodi/pvr.iptvsimple.multi/build/pvr.iptvsimple.multi-prefix/src/pvr.iptvsimple.multi-build/pvr.iptvsimple.multi.so.17.5"
    "/src/kodi/pvr.iptvsimple.multi/build/pvr.iptvsimple.multi-prefix/src/pvr.iptvsimple.multi-build/pvr.iptvsimple.multi.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pvr.iptvsimple.multi/pvr.iptvsimple.multi.so.2.4.14"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pvr.iptvsimple.multi/pvr.iptvsimple.multi.so.17.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/pvr.iptvsimple.multi/pvr.iptvsimple.multi.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/src/kodi/pvr.iptvsimple.multi/build/pvr.iptvsimple.multi-prefix/src/pvr.iptvsimple.multi-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
