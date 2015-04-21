#!/usr/bin/bash

repos=(
# AT-SPI2 repositories
  at-spi2/at-spi2-atk
  at-spi2/at-spi2-core
# Cross-desktop specifications and code
  xdg/dapi
  xdg/dapi-dbus
  xdg/default-icon-theme
  xdg/desktop-file-utils
  xdg/libxdg-vfs
  xdg/mpris-spec
  xdg/pyxdg
  xdg/shared-mime-info
  xdg/xdg-specs
  xdg/xdg-user-dirs
  xdg/xdg-utils
  xdg/xdgmime
# GStreamer SDK repositories
  gstreamer-sdk/WildMIDI
  gstreamer-sdk/XML-Simple
  gstreamer-sdk/a52dec
  gstreamer-sdk/atk
  gstreamer-sdk/autoconf
  gstreamer-sdk/automake
  gstreamer-sdk/binutils
  gstreamer-sdk/buildbot-testing-repo
  gstreamer-sdk/bzip2
  gstreamer-sdk/cairo
  gstreamer-sdk/cdparanoia
  gstreamer-sdk/cerbero
  gstreamer-sdk/clutter
  gstreamer-sdk/clutter-gst
  gstreamer-sdk/cogl
  gstreamer-sdk/dbus
  gstreamer-sdk/dbus-glib
  gstreamer-sdk/dbus-python
  gstreamer-sdk/docbook-xml
  gstreamer-sdk/docbook-xsl
  gstreamer-sdk/elfutils
  gstreamer-sdk/expat
  gstreamer-sdk/faad2
  gstreamer-sdk/flac
  gstreamer-sdk/fontconfig
  gstreamer-sdk/freetype
  gstreamer-sdk/fribidi
  gstreamer-sdk/gcc
  gstreamer-sdk/gdk-pixbuf
  gstreamer-sdk/gettext
  gstreamer-sdk/glib
  gstreamer-sdk/glib-networking
  gstreamer-sdk/gmp
  gstreamer-sdk/gnonlin
  gstreamer-sdk/gnutls
  gstreamer-sdk/gst-editing-services
  gstreamer-sdk/gst-ffmpeg
  gstreamer-sdk/gst-playback-test
  gstreamer-sdk/gst-plugins-bad
  gstreamer-sdk/gst-plugins-base
  gstreamer-sdk/gst-plugins-good
  gstreamer-sdk/gst-plugins-ugly
  gstreamer-sdk/gst-python
  gstreamer-sdk/gst-rtsp-server
  gstreamer-sdk/gst-sdk-insanity-tests
  gstreamer-sdk/gst-sdk-tutorials
  gstreamer-sdk/gst-sinks-tester
  gstreamer-sdk/gstreamer
  gstreamer-sdk/gtk
  gstreamer-sdk/gtk+
  gstreamer-sdk/gtk-doc
  gstreamer-sdk/gtk-engines
  gstreamer-sdk/gtk-mac-integration
  gstreamer-sdk/icon-naming-utils
  gstreamer-sdk/insanity
  gstreamer-sdk/insanity-gst
  gstreamer-sdk/iso-codes
  gstreamer-sdk/jasper
  gstreamer-sdk/jpeg
  gstreamer-sdk/json-c
  gstreamer-sdk/json-glib
  gstreamer-sdk/libXtst
  gstreamer-sdk/libass
  gstreamer-sdk/libav
  gstreamer-sdk/libcroco
  gstreamer-sdk/libdca
  gstreamer-sdk/libdv
  gstreamer-sdk/libdvdnav
  gstreamer-sdk/libdvdread
  gstreamer-sdk/libexif
  gstreamer-sdk/libffi
  gstreamer-sdk/libgcrypt
  gstreamer-sdk/libgpg-error
  gstreamer-sdk/libiconv
  gstreamer-sdk/libkate
  gstreamer-sdk/libmad
  gstreamer-sdk/libmms
  gstreamer-sdk/libmpeg2
  gstreamer-sdk/libogg
  gstreamer-sdk/libpng
  gstreamer-sdk/librsvg
  gstreamer-sdk/libshout
  gstreamer-sdk/libsoup
  gstreamer-sdk/libtasn1
  gstreamer-sdk/libtheora
  gstreamer-sdk/libvisual
  gstreamer-sdk/libvorbis
  gstreamer-sdk/libvpx
  gstreamer-sdk/libxml2
  gstreamer-sdk/libxslt
  gstreamer-sdk/m4
  gstreamer-sdk/mingw-w64
  gstreamer-sdk/mpc
  gstreamer-sdk/mpfr
  gstreamer-sdk/nettle
  gstreamer-sdk/opencore-amr
  gstreamer-sdk/openjpeg
  gstreamer-sdk/opus
  gstreamer-sdk/orc
  gstreamer-sdk/pango
  gstreamer-sdk/pixman
  gstreamer-sdk/pkg-config
  gstreamer-sdk/pthreads-win32
  gstreamer-sdk/pulseaudio
  gstreamer-sdk/py2cairo
  gstreamer-sdk/pygobject
  gstreamer-sdk/pygtk
  gstreamer-sdk/qt
  gstreamer-sdk/qt-gstreamer
  gstreamer-sdk/schroedinger
  gstreamer-sdk/snappy
  gstreamer-sdk/soundtouch
  gstreamer-sdk/speex
  gstreamer-sdk/taglib
  gstreamer-sdk/tango-icon-theme
  gstreamer-sdk/tiff
  gstreamer-sdk/tremor
  gstreamer-sdk/wavpack
  gstreamer-sdk/windows-external-sdk
  gstreamer-sdk/zlib
# GStreamer repositories
  gstreamer/attic/gst-android
  gstreamer/attic/gst-openmax
  gstreamer/attic/gst-plugins-gl
  gstreamer/attic/insanity
  gstreamer/attic/insanity-gst
  gstreamer/cerbero
  gstreamer/common
  gstreamer/gnonlin
  gstreamer/gst-devtools
  gstreamer/gst-editing-services
  gstreamer/gst-ffmpeg
  gstreamer/gst-integration-testsuites
  gstreamer/gst-libav
  gstreamer/gst-omx
  gstreamer/gst-plugins-bad
  gstreamer/gst-plugins-base
  gstreamer/gst-plugins-good
  gstreamer/gst-plugins-ugly
  gstreamer/gst-python
  gstreamer/gst-rtsp-server
  gstreamer/gst-streaming-server
  gstreamer/gst-template
  gstreamer/gstreamer
  gstreamer/gstreamer-sharp
  gstreamer/jhbuild
  gstreamer/orc
  gstreamer/qt-gstreamer
  gstreamer/sdk/cerbero
  gstreamer/www
# LibreOffice repositories
  libreoffice/artwork
  libreoffice/base
  libreoffice/binfilter
  libreoffice/bootstrap
  libreoffice/build
  libreoffice/calc
  libreoffice/components
  libreoffice/contrib/buildbot
  libreoffice/contrib/dev-tools
  libreoffice/contrib/gitdm-config
  libreoffice/contrib/mso-dumper
  libreoffice/contrib/ooeclipse
  libreoffice/contrib/svn-to-git
  libreoffice/contrib/test-files
  libreoffice/core
  libreoffice/cppunit
  libreoffice/dictionaries
  libreoffice/extensions
  libreoffice/extras
  libreoffice/filters
  libreoffice/help
  libreoffice/impress
  libreoffice/impress_remote
  libreoffice/l10n
  libreoffice/libabw
  libreoffice/libcdr
  libreoffice/libetonyek
  libreoffice/libexttextcat
  libreoffice/libfreehand
  libreoffice/libgltf
  libreoffice/libmspub
  libreoffice/libs-core
  libreoffice/libs-extern
  libreoffice/libs-extern-sys
  libreoffice/libs-gui
  libreoffice/libvisio
  libreoffice/lightproof
  libreoffice/original-artwork
  libreoffice/postprocess
  libreoffice/sdk
  libreoffice/templates
  libreoffice/testing
  libreoffice/translations
  libreoffice/ugly
  libreoffice/ure
  libreoffice/voting
  libreoffice/website
  libreoffice/writer
# PulseAudio repositories
  pulseaudio/paprefs
  pulseaudio/pavucontrol
  pulseaudio/pavucontrol.git.bup
  pulseaudio/planet
  pulseaudio/pulseaudio
  pulseaudio/pulseaudio.git.backup
  pulseaudio/reserve
  pulseaudio/webrtc-audio-processing
# Spice virtual desktop interaction
  spice/linux/vd_agent
  spice/qemu
  spice/slirp
  spice/spice
  spice/spice-common
  spice/spice-gtk
  spice/spice-html5
  spice/spice-protocol
  spice/spice-server
  spice/spice-xpi
  spice/spicec
  spice/usbredir
  spice/vdesktop
  spice/win32/qxl
  spice/win32/usbclerk
  spice/win32/usbdk
  spice/win32/vd_agent
  spice/win32/vdi_port
# Telepathy communications framework
  telepathy/telepathy-butterfly
  telepathy/telepathy-doc
  telepathy/telepathy-farsight
  telepathy/telepathy-farstream
  telepathy/telepathy-gabble
  telepathy/telepathy-glib
  telepathy/telepathy-haze
  telepathy/telepathy-idle
  telepathy/telepathy-logger
  telepathy/telepathy-mission-control
  telepathy/telepathy-origami
  telepathy/telepathy-phoenix
  telepathy/telepathy-python
  telepathy/telepathy-qt
  telepathy/telepathy-qt-farstream
  telepathy/telepathy-qt4
  telepathy/telepathy-qt4-yell
  telepathy/telepathy-rakia
  telepathy/telepathy-ring
  telepathy/telepathy-salut
  telepathy/telepathy-spec
  telepathy/telepathy-ssh-contact
  telepathy/telepathy-sunshine
  telepathy/telepathy-yell
# VA-API (Video Acceleration API)
  vaapi/intel-driver
  vaapi/libva
  vaapi/pvr-driver
  vaapi/vdpau-driver
  vaapi/xvba-driver
# Wayland
  wayland/libinput
  wayland/wayland
  wayland/wayland-java
  wayland/wayland-web
  wayland/weston
# X.Org Foundation
  xorg/foundation/bylaws
# X.Org applications
  xorg/app/appres
  xorg/app/bdftopcf
  xorg/app/beforelight
  xorg/app/bitmap
  xorg/app/compiz
  xorg/app/constype
  xorg/app/edid-decode
  xorg/app/editres
  xorg/app/fdclock
  xorg/app/fonttosfnt
  xorg/app/fslsfonts
  xorg/app/fstobdf
  xorg/app/glxcompmgr
  xorg/app/grandr
  xorg/app/iceauth
  xorg/app/ico
  xorg/app/intel-gen4asm
  xorg/app/intel-gpu-tools
  xorg/app/lbxproxy
  xorg/app/listres
  xorg/app/luit
  xorg/app/makepsres
  xorg/app/mdm
  xorg/app/mkcfm
  xorg/app/mkcomposecache
  xorg/app/mkfontdir
  xorg/app/mkfontscale
  xorg/app/oclock
  xorg/app/pclcomp
  xorg/app/proxymngr
  xorg/app/rendercheck
  xorg/app/rgb
  xorg/app/rstart
  xorg/app/scripts
  xorg/app/sessreg
  xorg/app/setxkbmap
  xorg/app/showfont
  xorg/app/smproxy
  xorg/app/transset
  xorg/app/twm
  xorg/app/viewres
  xorg/app/x11perf
  xorg/app/xauth
  xorg/app/xbacklight
  xorg/app/xbiff
  xorg/app/xcalc
  xorg/app/xclipboard
  xorg/app/xclock
  xorg/app/xcmsdb
  xorg/app/xcompmgr
  xorg/app/xconsole
  xorg/app/xcursorgen
  xorg/app/xdbedizzy
  xorg/app/xditview
  xorg/app/xdm
  xorg/app/xdpyinfo
  xorg/app/xdriinfo
  xorg/app/xedit
  xorg/app/xev
  xorg/app/xeyes
  xorg/app/xf86dga
  xorg/app/xfd
  xorg/app/xfindproxy
  xorg/app/xfontsel
  xorg/app/xfs
  xorg/app/xfsinfo
  xorg/app/xfwp
  xorg/app/xgamma
  xorg/app/xgc
  xorg/app/xhost
  xorg/app/xinit
  xorg/app/xinput
  xorg/app/xkbcomp
  xorg/app/xkbevd
  xorg/app/xkbprint
  xorg/app/xkbutils
  xorg/app/xkill
  xorg/app/xload
  xorg/app/xlogo
  xorg/app/xlsatoms
  xorg/app/xlsclients
  xorg/app/xlsfonts
  xorg/app/xmag
  xorg/app/xman
  xorg/app/xmessage
  xorg/app/xmh
  xorg/app/xmodmap
  xorg/app/xmore
  xorg/app/xoo
  xorg/app/xphelloworld
  xorg/app/xplsprinters
  xorg/app/xpr
  xorg/app/xprehashprinterlist
  xorg/app/xprop
  xorg/app/xrandr
  xorg/app/xrdb
  xorg/app/xrefresh
  xorg/app/xresponse
  xorg/app/xrestop
  xorg/app/xrx
  xorg/app/xscope
  xorg/app/xset
  xorg/app/xsetmode
  xorg/app/xsetpointer
  xorg/app/xsetroot
  xorg/app/xshowdamage
  xorg/app/xsm
  xorg/app/xstdcmap
  xorg/app/xtrap
  xorg/app/xtsttopng
  xorg/app/xvidtune
  xorg/app/xvinfo
  xorg/app/xwd
  xorg/app/xwininfo
  xorg/app/xwud
# X.Org bitmap fonts
  xorg/font/adobe-100dpi
  xorg/font/adobe-75dpi
  xorg/font/adobe-utopia-100dpi
  xorg/font/adobe-utopia-75dpi
  xorg/font/adobe-utopia-type1
  xorg/font/alias
  xorg/font/arabic-misc
  xorg/font/bh-100dpi
  xorg/font/bh-75dpi
  xorg/font/bh-lucidatypewriter-100dpi
  xorg/font/bh-lucidatypewriter-75dpi
  xorg/font/bh-ttf
  xorg/font/bh-type1
  xorg/font/bitstream-100dpi
  xorg/font/bitstream-75dpi
  xorg/font/bitstream-speedo
  xorg/font/bitstream-type1
  xorg/font/cronyx-cyrillic
  xorg/font/cursor-misc
  xorg/font/daewoo-misc
  xorg/font/dec-misc
  xorg/font/encodings
  xorg/font/ibm-type1
  xorg/font/isas-misc
  xorg/font/jis-misc
  xorg/font/micro-misc
  xorg/font/misc-cyrillic
  xorg/font/misc-ethiopic
  xorg/font/misc-meltho
  xorg/font/misc-misc
  xorg/font/mutt-misc
  xorg/font/schumacher-misc
  xorg/font/screen-cyrillic
  xorg/font/sony-misc
  xorg/font/sun-misc
  xorg/font/util
  xorg/font/winitzki-cyrillic
  xorg/font/xfree86-type1
# X.Org build utilities
  xorg/util/cf
  xorg/util/gccmakedep
  xorg/util/imake
  xorg/util/install-check
  xorg/util/lndir
  xorg/util/macros
  xorg/util/makedepend
  xorg/util/modular
  xorg/util/xmkmf
# X.Org data and documentation
  xorg/data/bitmaps
  xorg/data/cursors
  xorg/doc/xorg-docs
  xorg/doc/xorg-sgml-doctools
# X.Org drivers
  xorg/driver/glamor
  xorg/driver/xf86-input-acecad
  xorg/driver/xf86-input-aiptek
  xorg/driver/xf86-input-calcomp
  xorg/driver/xf86-input-citron
  xorg/driver/xf86-input-digitaledge
  xorg/driver/xf86-input-dmc
  xorg/driver/xf86-input-dynapro
  xorg/driver/xf86-input-elo2300
  xorg/driver/xf86-input-elographics
  xorg/driver/xf86-input-evdev
  xorg/driver/xf86-input-fpit
  xorg/driver/xf86-input-hyperpen
  xorg/driver/xf86-input-jamstudio
  xorg/driver/xf86-input-joystick
  xorg/driver/xf86-input-keyboard
  xorg/driver/xf86-input-libinput
  xorg/driver/xf86-input-magellan
  xorg/driver/xf86-input-magictouch
  xorg/driver/xf86-input-microtouch
  xorg/driver/xf86-input-mouse
  xorg/driver/xf86-input-mutouch
  xorg/driver/xf86-input-palmax
  xorg/driver/xf86-input-penmount
  xorg/driver/xf86-input-sample
  xorg/driver/xf86-input-spaceorb
  xorg/driver/xf86-input-summa
  xorg/driver/xf86-input-synaptics
  xorg/driver/xf86-input-tek4957
  xorg/driver/xf86-input-ur98
  xorg/driver/xf86-input-vmmouse
  xorg/driver/xf86-input-void
  xorg/driver/xf86-video-amdgpu
  xorg/driver/xf86-video-apm
  xorg/driver/xf86-video-ark
  xorg/driver/xf86-video-armsoc
  xorg/driver/xf86-video-ast
  xorg/driver/xf86-video-ati
  xorg/driver/xf86-video-chips
  xorg/driver/xf86-video-cirrus
  xorg/driver/xf86-video-cyrix
  xorg/driver/xf86-video-dummy
  xorg/driver/xf86-video-fbdev
  xorg/driver/xf86-video-freedreno
  xorg/driver/xf86-video-geode
  xorg/driver/xf86-video-glide
  xorg/driver/xf86-video-glint
  xorg/driver/xf86-video-i128
  xorg/driver/xf86-video-i740
  xorg/driver/xf86-video-impact
  xorg/driver/xf86-video-imstt
  xorg/driver/xf86-video-intel
  xorg/driver/xf86-video-mach64
  xorg/driver/xf86-video-mga
  xorg/driver/xf86-video-modesetting
  xorg/driver/xf86-video-neomagic
  xorg/driver/xf86-video-nested
  xorg/driver/xf86-video-newport
  xorg/driver/xf86-video-nsc
  xorg/driver/xf86-video-nv
  xorg/driver/xf86-video-omap
  xorg/driver/xf86-video-opentegra
  xorg/driver/xf86-video-p690
  xorg/driver/xf86-video-qxl
  xorg/driver/xf86-video-r128
  xorg/driver/xf86-video-radeonhd
  xorg/driver/xf86-video-rendition
  xorg/driver/xf86-video-s3
  xorg/driver/xf86-video-s3virge
  xorg/driver/xf86-video-savage
  xorg/driver/xf86-video-siliconmotion
  xorg/driver/xf86-video-sis
  xorg/driver/xf86-video-sisusb
  xorg/driver/xf86-video-sunbw2
  xorg/driver/xf86-video-suncg14
  xorg/driver/xf86-video-suncg3
  xorg/driver/xf86-video-suncg6
  xorg/driver/xf86-video-sunffb
  xorg/driver/xf86-video-sunleo
  xorg/driver/xf86-video-suntcx
  xorg/driver/xf86-video-tdfx
  xorg/driver/xf86-video-tga
  xorg/driver/xf86-video-trident
  xorg/driver/xf86-video-tseng
  xorg/driver/xf86-video-v4l
  xorg/driver/xf86-video-vermilion
  xorg/driver/xf86-video-vesa
  xorg/driver/xf86-video-vga
  xorg/driver/xf86-video-via
  xorg/driver/xf86-video-vmware
  xorg/driver/xf86-video-voodoo
  xorg/driver/xf86-video-wayland
  xorg/driver/xf86-video-wsfb
  xorg/driver/xf86-video-xgi
  xorg/driver/xf86-video-xgixp
# X.Org libraries
  xorg/lib/libAppleWM
  xorg/lib/libFS
  xorg/lib/libICE
  xorg/lib/libSM
  xorg/lib/libWindowsWM
  xorg/lib/libX11
  xorg/lib/libXCalibrate
  xorg/lib/libXRes
  xorg/lib/libXScrnSaver
  xorg/lib/libXTrap
  xorg/lib/libXau
  xorg/lib/libXaw
  xorg/lib/libXaw3d
  xorg/lib/libXcomposite
  xorg/lib/libXcursor
  xorg/lib/libXdamage
  xorg/lib/libXdmcp
  xorg/lib/libXevie
  xorg/lib/libXext
  xorg/lib/libXfixes
  xorg/lib/libXfont
  xorg/lib/libXfontcache
  xorg/lib/libXft
  xorg/lib/libXi
  xorg/lib/libXinerama
  xorg/lib/libXlg3d
  xorg/lib/libXmu
  xorg/lib/libXp
  xorg/lib/libXpm
  xorg/lib/libXpresent
  xorg/lib/libXprintAppUtil
  xorg/lib/libXprintUtil
  xorg/lib/libXrandr
  xorg/lib/libXrandrUtils
  xorg/lib/libXrender
  xorg/lib/libXt
  xorg/lib/libXtst
  xorg/lib/libXv
  xorg/lib/libXvMC
  xorg/lib/libXxf86dga
  xorg/lib/libXxf86misc
  xorg/lib/libXxf86rush
  xorg/lib/libXxf86vm
  xorg/lib/libdmx
  xorg/lib/libfontenc
  xorg/lib/liblbxutil
  xorg/lib/liboldX
  xorg/lib/libpciaccess
  xorg/lib/libxcwm
  xorg/lib/libxkbcommon
  xorg/lib/libxkbfile
  xorg/lib/libxkbui
  xorg/lib/libxshmfence
  xorg/lib/libxtrans
# X.Org protocol headers
  xorg/proto/applewmproto
  xorg/proto/bigreqsproto
  xorg/proto/calibrateproto
  xorg/proto/compositeproto
  xorg/proto/damageproto
  xorg/proto/dmxproto
  xorg/proto/dri2proto
  xorg/proto/dri3proto
  xorg/proto/evieproto
  xorg/proto/fixesproto
  xorg/proto/fontcacheproto
  xorg/proto/fontsproto
  xorg/proto/glproto
  xorg/proto/inputproto
  xorg/proto/kbproto
  xorg/proto/lg3dproto
  xorg/proto/panoramixproto
  xorg/proto/pmproto
  xorg/proto/presentproto
  xorg/proto/printproto
  xorg/proto/randrproto
  xorg/proto/recordproto
  xorg/proto/renderproto
  xorg/proto/resourceproto
  xorg/proto/scrnsaverproto
  xorg/proto/trapproto
  xorg/proto/videoproto
  xorg/proto/windowswmproto
  xorg/proto/x11proto
  xorg/proto/xcmiscproto
  xorg/proto/xextproto
  xorg/proto/xf86bigfontproto
  xorg/proto/xf86dgaproto
  xorg/proto/xf86driproto
  xorg/proto/xf86miscproto
  xorg/proto/xf86rushproto
  xorg/proto/xf86vidmodeproto
  xorg/proto/xineramaproto
  xorg/proto/xproto
# X.Org repositories
  xorg/xprint
  xorg/xserver
  xorg/xserver-test
# X.Org test suites
  xorg/test/xhiv
  xorg/test/xorg-gtest
  xorg/test/xorg-integration-tests
  xorg/test/xts
# XCB repositories
  xcb/demo
  xcb/historic
  xcb/libXamine
  xcb/libxcb
  xcb/proto
  xcb/pthread-stubs
  xcb/util
  xcb/util-common-m4
  xcb/util-cursor
  xcb/util-errors
  xcb/util-image
  xcb/util-keysyms
  xcb/util-old
  xcb/util-renderutil
  xcb/util-wm
  xcb/xhsb
  xcb/xpyb
# Ytstenut
  ytstenut/telepathy-ytstenut
  ytstenut/ytstenut-glib
  ytstenut/ytstenut-plugins
  ytstenut/ytstenut-protocol
# freedesktop.org repositories
  ConsoleKit
  ModemManager/ModemManager
  NetworkManager/NetworkManager
  SyncEvolution/libsynthesis
  SyncEvolution/syncevolution
  accountsservice
  androgenizer
  apoc-agent
  apoc-cli
  apoc-firefox-adapter
  apoc-manager
  apoc-profile-editor
  apoc-spi
  apoc-template-packages
  avivo/xf86-video-avivo
  beignet
  bustle
  cairo
  cairo-5c
  cairo-benchmarks
  cairo-ocaml
  cairo-traces
  cairomm
  ccss
  colord
  cups-pk-helper
  dbus/dbus
  dbus/dbus-doc
  dbus/dbus-glib
  dbus/dbus-java
  dbus/dbus-mono
  dbus/dbus-python
  dbus/dbus-qt
  dbus/dbus-qt3
  dbus/dbus-test
  dolt
  drm-intel
  evemu
  evtest
  exempi
  fontconfig
  freedesktop/cvsps
  freedesktop/ssh-bleach
  freetype/freetype-web
  fribidi/c2man
  fribidi/fribidi
  fribidi/fribidi.old
  geoclue
  glitz
  glu3
  gummiboot
  gypsy
  hal
  hal-info
  harfbuzz
  harfbuzz.old
  hieroglyph
  itstool
  ldtp/a11y-test-suite
  ldtp/appmap
  ldtp/ldtp
  ldtp/ldtp2
  ldtp/pyautosuite
  libbacklight
  libbsd
  libdlo
  libevdev
  libjpeg
  liblazy
  libmbim/libmbim
  libminidump
  libnice/libnice
  liboil
  libopenraw
  libqmi
  libspectre
  libva
  libxkbcommon
  libxklavier
  lightdm
  loudmouth
  media-player-info
  mesa/clover
  mesa/demos
  mesa/drm
  mesa/glu
  mesa/glut
  mesa/glw
  mesa/libwsbm
  mesa/linux-agp-compat
  mesa/llvm
  mesa/mesa
  mesa/mesa-test
  mesa/r600_demo
  mesa/rbug-gui
  mesa/shader-db
  mesa/tasks
  mesa/vmwgfx
  nouveau/linux-2.6
  nouveau/mesa
  nouveau/xf86-video-nouveau
  ohm
  openchrome/drm-openchrome
  openchrome/mesa-openchrome
  openchrome/xf86-video-openchrome
  p11-glue/p11-glue
  p11-glue/p11-kit
  p11-glue/pkcs11-trust-assertions
  packagekit
  packagekit/PackageKit
  packagekit/PackageKit-Qt
  papyon
  piglit
  piglit-test
  pixman
  pkg-config
  plymouth
  pm-utils
  polkit
  poppler/poppler
  poppler/poppler-data
  poppler/poppler-glibmm
  poppler/test
  py2cairo
  pycairo
  python-geoclue
  razor
  roadster
  sbox2
  shared-desktop-ontologies
  shave
  sound-theme-freedesktop
  startup-notification
  swfdec/swfdec
  swfdec/swfdec-directfb
  swfdec/swfdec-gnome
  swfdec/swfdec-konqueror
  swfdec/swfdec-mozilla
  system-tools-backends
  system-tools-backends-old
  systemd/systemd
  systemd/systemd-stable
  systemd/systemd-ui
  tango/tango-icon-library
  tango/tango-icon-theme
  tegra/linux
  twin
  udisks
  upower
  wocky
  xesam
  xkeyboard-config
  xpmn/protocol
  xqproxy
  zeitgeist/zeitgeist
  zeitgeist/zeitgeist-datahub
  zeitgeist/zeitgeist-datasources
  zeitgeist/zeitgeist-extensions
  zeitgeist/zeitgeist-sharp
# libfprint fingerprint reader
  libfprint/fprintd
  libfprint/libfprint
# realmd repositories
  realmd/adcli
  realmd/realmd
)

cd ..;

for repo in "${repos[@]}" ; do
  # replace / with __ in repository name
  hubrepo="${repo//\//__}"
  git clone --mirror git://anongit.freedesktop.org/"$repo" "$hubrepo"
  
done