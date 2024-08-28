export SOC=j722s


TODO:
1. Need to make platform agnostic - find if local machine is x86_64 or AARCH64
2. Need workaround for pulling the ADAS images, maybe new target? BeagleY?

Encountered Errors

CMake Warning:
  Manually-specified variables were not used by the project:

    CMAKE_TOOLCHAIN_FILE


edgeai-dl-inferer fails to build because it can't find dlr.h 
cross_compile_aarch64.cmake looks for ${TARGET_FS}/usr/lib/python3.12/site-packages/dlr ...but 9.0.2 is stuck on 3.10 hahahaa


edgeai-dl-inferer try checking out 	d8b41806ebc7b64aad0e0fb5b7a163a339ea90c9  so we're on 9.0.2 -> THAT WORKS


now ninja fails on gst-libs/gst/ti/libgstti 

/Desktop/edgeai-app-stack/targetfs/usr/lib$ cp -r python3.10/* python3.12/ HACK

MORE ERRORS

-- Build files have been written to: /home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build
make[1]: Entering directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
make[2]: Entering directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
make[3]: Entering directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
utils/CMakeFiles/edgeai_utils.dir/flags.make:10: *** missing separator.  Stop.
make[3]: Leaving directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
make[2]: *** [CMakeFiles/Makefile2:151: utils/CMakeFiles/edgeai_utils.dir/all] Error 2
make[2]: *** Waiting for unfinished jobs....
make[3]: Entering directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
common/CMakeFiles/edgeai_common.dir/flags.make:10: *** missing separator.  Stop.
make[3]: Leaving directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
make[2]: *** [CMakeFiles/Makefile2:177: common/CMakeFiles/edgeai_common.dir/all] Error 2
make[2]: Leaving directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
make[1]: *** [Makefile:136: all] Error 2
make[1]: Leaving directory '/home/grippy/Desktop/edgeai-app-stack/edgeai-gst-apps/apps_cpp/build'
make: *** [Makefile:183: gst_apps] Error 2


sudo apt-get install libglib2.0-dev