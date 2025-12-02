#--------------------------------------------------------
# Copyright (C) 1995-2007 MySQL AB
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of version 2 of the GNU General Public License as
# published by the Free Software Foundation.
#
# There are special exceptions to the terms and conditions of the GPL
# as it is applied to this software. View the full text of the exception
# in file LICENSE.exceptions in the top-level directory of this software
# distribution.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# The MySQL Connector/ODBC is licensed under the terms of the
# GPL, like most MySQL Connectors. There are special exceptions
# to the terms and conditions of the GPL as it is applied to
# this software, see the FLOSS License Exception available on
# mysql.com.

##########################################################################

# Try to use vcpkg's unofficial-libmysql first (for vcpkg builds)
find_package(unofficial-libmysql QUIET)
if(unofficial-libmysql_FOUND)
	message(STATUS "Found MySQL via vcpkg unofficial-libmysql")
	set(MYSQL_FOUND TRUE)
	get_target_property(MYSQL_INCLUDE_DIR unofficial::libmysql::libmysql INTERFACE_INCLUDE_DIRECTORIES)
	set(MYSQL_CLIENT_LIBS unofficial::libmysql::libmysql)
	return()
endif()

#-------------- FIND MYSQL_INCLUDE_DIR ------------------
FIND_PATH(MYSQL_INCLUDE_DIR mysql.h
		$ENV{MYSQL_INCLUDE_DIR}
		$ENV{MYSQL_DIR}/include
		$ENV{VCPKG_ROOT}/installed/x64-windows/include/mysql
		${CMAKE_SOURCE_DIR}/vcpkg/installed/x64-windows/include/mysql
		${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/include/mysql
		/usr/include/mysql
		/usr/local/include/mysql
		/opt/mysql/mysql/include
		/opt/mysql/mysql/include/mysql
		/opt/mysql/include
		/opt/local/include/mysql5
		/usr/local/mysql/include
		/usr/local/mysql/include/mysql
		$ENV{ProgramFiles}/MySQL/*/include
		$ENV{SystemDrive}/MySQL/*/include)

#----------------- FIND MYSQL_LIB_DIR -------------------
IF (WIN32)
	# Set lib path suffixes
	# dist = for mysql binary distributions
	# build = for custom built tree
	IF (CMAKE_BUILD_TYPE STREQUAL Debug)
		SET(libsuffixDist debug)
		SET(libsuffixBuild Debug)
	ELSE (CMAKE_BUILD_TYPE STREQUAL Debug)
		SET(libsuffixDist opt)
		SET(libsuffixBuild Release)
		ADD_DEFINITIONS(-DDBUG_OFF)
	ENDIF (CMAKE_BUILD_TYPE STREQUAL Debug)

	FIND_LIBRARY(MYSQL_LIB NAMES libmysql mysqlclient
				 PATHS
				 $ENV{VCPKG_ROOT}/installed/x64-windows/lib
				 ${CMAKE_SOURCE_DIR}/vcpkg/installed/x64-windows/lib
				 ${VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/lib
				 $ENV{MYSQL_DIR}/lib/${libsuffixDist}
				 $ENV{MYSQL_DIR}/libmysql
				 $ENV{MYSQL_DIR}/libmysql/${libsuffixBuild}
				 $ENV{MYSQL_DIR}/client/${libsuffixBuild}
				 $ENV{MYSQL_DIR}/libmysql/${libsuffixBuild}
				 $ENV{ProgramFiles}/MySQL/*/lib/${libsuffixDist}
				 $ENV{SystemDrive}/MySQL/*/lib/${libsuffixDist})
ELSE (WIN32)
	FIND_LIBRARY(MYSQL_LIB NAMES mysqlclient
				 PATHS
				 $ENV{MYSQL_DIR}/libmysql/.libs
				 $ENV{MYSQL_DIR}/lib
				 $ENV{MYSQL_DIR}/lib/mysql
				 /usr/lib/mysql
				 /usr/local/lib/mysql
				 /usr/local/mysql/lib
				 /usr/local/mysql/lib/mysql
				 /opt/local/mysql5/lib
				 /opt/local/lib/mysql5/mysql
				 /opt/mysql/mysql/lib/mysql
				 /opt/mysql/lib/mysql)
ENDIF (WIN32)

IF(MYSQL_LIB)
	GET_FILENAME_COMPONENT(MYSQL_LIB_DIR ${MYSQL_LIB} PATH)
ENDIF(MYSQL_LIB)

IF (MYSQL_INCLUDE_DIR AND MYSQL_LIB_DIR)
	SET(MYSQL_FOUND TRUE)

	INCLUDE_DIRECTORIES(${MYSQL_INCLUDE_DIR})
	LINK_DIRECTORIES(${MYSQL_LIB_DIR})

	FIND_LIBRARY(MYSQL_ZLIB zlib PATHS ${MYSQL_LIB_DIR})
	FIND_LIBRARY(MYSQL_YASSL yassl PATHS ${MYSQL_LIB_DIR})
	FIND_LIBRARY(MYSQL_TAOCRYPT taocrypt PATHS ${MYSQL_LIB_DIR})
	
	# Use the actual library found, not hardcoded name
	GET_FILENAME_COMPONENT(MYSQL_LIB_NAME ${MYSQL_LIB} NAME_WE)
	SET(MYSQL_CLIENT_LIBS ${MYSQL_LIB})
	
	IF (MYSQL_ZLIB)
		SET(MYSQL_CLIENT_LIBS ${MYSQL_CLIENT_LIBS} zlib)
	ENDIF (MYSQL_ZLIB)
	IF (MYSQL_YASSL)
		SET(MYSQL_CLIENT_LIBS ${MYSQL_CLIENT_LIBS} yassl)
	ENDIF (MYSQL_YASSL)
	IF (MYSQL_TAOCRYPT)
		SET(MYSQL_CLIENT_LIBS ${MYSQL_CLIENT_LIBS} taocrypt)
	ENDIF (MYSQL_TAOCRYPT)
	# Added needed mysqlclient dependencies on Windows
	IF (WIN32)
		SET(MYSQL_CLIENT_LIBS ${MYSQL_CLIENT_LIBS} ws2_32)
	ENDIF (WIN32)

	MESSAGE(STATUS "MySQL Include dir: ${MYSQL_INCLUDE_DIR}  library dir: ${MYSQL_LIB_DIR}")
	MESSAGE(STATUS "MySQL client libraries: ${MYSQL_CLIENT_LIBS}")
ELSEIF (MySQL_FIND_REQUIRED)
	MESSAGE(FATAL_ERROR "Cannot find MySQL. Include dir: ${MYSQL_INCLUDE_DIR}  library dir: ${MYSQL_LIB_DIR}")
ELSE()
	MESSAGE(STATUS "MySQL not found. Include dir: ${MYSQL_INCLUDE_DIR}  library dir: ${MYSQL_LIB_DIR}")
ENDIF (MYSQL_INCLUDE_DIR AND MYSQL_LIB_DIR)

