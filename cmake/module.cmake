if(TARGET LibRakNet_Static)
    return()
endif()

# Variables
set(BASE_DIR "${CMAKE_CURRENT_LIST_DIR}/..")

# Sources
set(SRC_DIR "${BASE_DIR}/Source")
file(GLOB_RECURSE RAKNET_SRCS "${SRC_DIR}/*.c" "${SRC_DIR}/*.cpp" "${SRC_DIR}/*.cc" "${SRC_DIR}/*.m" "${SRC_DIR}/*.mm")

set(SRC_DIR "${BASE_DIR}/DependentExtensions/miniupnpc-1.5")
file(GLOB_RECURSE MINIUPNPC_SRCS "${SRC_DIR}/*.c" "${SRC_DIR}/*.cpp" "${SRC_DIR}/*.cc" "${SRC_DIR}/*.m" "${SRC_DIR}/*.mm")

# Library definitions
add_library(LibRakNet_Static STATIC ${RAKNET_SRCS} ${MINIUPNPC_SRCS})

# Include path
target_include_directories(LibRakNet_Static
    PUBLIC "${BASE_DIR}/Source"
    PUBLIC "${BASE_DIR}/DependentExtensions/miniupnpc-1.5"
)
