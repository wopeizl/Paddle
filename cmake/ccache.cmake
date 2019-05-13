# Use ccache if found ccache program

#find_program(CCACHE_PATH ccache)
#
#if(CCACHE_PATH)
#    message(STATUS "Ccache is founded, use ccache to speed up compile.")
#    set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ${CCACHE_PATH})
#    set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ${CCACHE_PATH})
#endif(CCACHE_PATH)

find_program(SCCACHE_PATH sccache)

if(SCCACHE_PATH)
    message(STATUS "sccache is founded, use ccache to speed up compile. ${SCCACHE_PATH}")
    set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ${SCCACHE_PATH})
    set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ${SCCACHE_PATH})
else()
    message(FATAL "no found sccache")
endif(SCCACHE_PATH)
