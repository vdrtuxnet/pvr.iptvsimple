if("38343e0acd6a636ac46139aa666aee4a8d1f13db" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

set(run 0)

if("/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-stamp/p8-platform-gitinfo.txt" IS_NEWER_THAN "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-stamp/p8-platform-gitclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-stamp/p8-platform-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform'")
endif()

# try the clone 3 times incase there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" clone --origin "origin" "https://github.com/Pulse-Eight/platform.git" "p8-platform"
    WORKING_DIRECTORY "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/Pulse-Eight/platform.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git" checkout 38343e0acd6a636ac46139aa666aee4a8d1f13db
  WORKING_DIRECTORY "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '38343e0acd6a636ac46139aa666aee4a8d1f13db'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule init 
  WORKING_DIRECTORY "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule update --recursive 
  WORKING_DIRECTORY "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-stamp/p8-platform-gitinfo.txt"
    "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-stamp/p8-platform-gitclone-lastrun.txt"
  WORKING_DIRECTORY "/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/src/kodi/pvr.iptvsimple.multi/build/build/p8-platform/src/p8-platform-stamp/p8-platform-gitclone-lastrun.txt'")
endif()

