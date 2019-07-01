# GNU Make project makefile autogenerated by Premake

ifndef config
  config=release_x86
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),release_x86)
  RESCOMP = windres
  TARGETDIR = bin/x86/Release
  TARGET = $(TARGETDIR)/curl-lib.lib
  OBJDIR = obj/x86/Release/curl-lib
  DEFINES += -DPREMAKE_COMPRESSION -DPREMAKE_CURL -DNDEBUG -DBUILDING_LIBCURL -DCURL_STATICLIB -DHTTP_ONLY -DUSE_ZLIB -DUSE_SCHANNEL -DUSE_WINDOWS_SSPI
  INCLUDES += -I../../contrib/curl/include -I../../contrib/curl/lib -I../../contrib/mbedtls/include -I../../contrib/zlib
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -flto -O3 -w
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -flto -O3 -w -fno-stack-protector
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcrypt32
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -flto -s
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x64)
  RESCOMP = windres
  TARGETDIR = bin/x64/Release
  TARGET = $(TARGETDIR)/curl-lib.lib
  OBJDIR = obj/x64/Release/curl-lib
  DEFINES += -DPREMAKE_COMPRESSION -DPREMAKE_CURL -DNDEBUG -DBUILDING_LIBCURL -DCURL_STATICLIB -DHTTP_ONLY -DUSE_ZLIB -DUSE_SCHANNEL -DUSE_WINDOWS_SSPI
  INCLUDES += -I../../contrib/curl/include -I../../contrib/curl/lib -I../../contrib/mbedtls/include -I../../contrib/zlib
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -flto -O3 -w
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -flto -O3 -w -fno-stack-protector
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcrypt32
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -flto -s
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x86)
  RESCOMP = windres
  TARGETDIR = bin/x86/Debug
  TARGET = $(TARGETDIR)/curl-lib.lib
  OBJDIR = obj/x86/Debug/curl-lib
  DEFINES += -DPREMAKE_COMPRESSION -DPREMAKE_CURL -D_DEBUG -DBUILDING_LIBCURL -DCURL_STATICLIB -DHTTP_ONLY -DUSE_ZLIB -DUSE_SCHANNEL -DUSE_WINDOWS_SSPI
  INCLUDES += -I../../contrib/curl/include -I../../contrib/curl/lib -I../../contrib/mbedtls/include -I../../contrib/zlib
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g -w
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g -w
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcrypt32
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x64)
  RESCOMP = windres
  TARGETDIR = bin/x64/Debug
  TARGET = $(TARGETDIR)/curl-lib.lib
  OBJDIR = obj/x64/Debug/curl-lib
  DEFINES += -DPREMAKE_COMPRESSION -DPREMAKE_CURL -D_DEBUG -DBUILDING_LIBCURL -DCURL_STATICLIB -DHTTP_ONLY -DUSE_ZLIB -DUSE_SCHANNEL -DUSE_WINDOWS_SSPI
  INCLUDES += -I../../contrib/curl/include -I../../contrib/curl/lib -I../../contrib/mbedtls/include -I../../contrib/zlib
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g -w
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -w
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcrypt32
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

OBJECTS := \
	$(OBJDIR)/amigaos.o \
	$(OBJDIR)/asyn-ares.o \
	$(OBJDIR)/asyn-thread.o \
	$(OBJDIR)/base64.o \
	$(OBJDIR)/conncache.o \
	$(OBJDIR)/connect.o \
	$(OBJDIR)/content_encoding.o \
	$(OBJDIR)/cookie.o \
	$(OBJDIR)/curl_addrinfo.o \
	$(OBJDIR)/curl_des.o \
	$(OBJDIR)/curl_endian.o \
	$(OBJDIR)/curl_fnmatch.o \
	$(OBJDIR)/curl_gethostname.o \
	$(OBJDIR)/curl_gssapi.o \
	$(OBJDIR)/curl_memrchr.o \
	$(OBJDIR)/curl_multibyte.o \
	$(OBJDIR)/curl_ntlm_core.o \
	$(OBJDIR)/curl_ntlm_wb.o \
	$(OBJDIR)/curl_rtmp.o \
	$(OBJDIR)/curl_sasl.o \
	$(OBJDIR)/curl_sspi.o \
	$(OBJDIR)/curl_threads.o \
	$(OBJDIR)/dict.o \
	$(OBJDIR)/dotdot.o \
	$(OBJDIR)/easy.o \
	$(OBJDIR)/escape.o \
	$(OBJDIR)/file.o \
	$(OBJDIR)/fileinfo.o \
	$(OBJDIR)/formdata.o \
	$(OBJDIR)/ftp.o \
	$(OBJDIR)/ftplistparser.o \
	$(OBJDIR)/getenv.o \
	$(OBJDIR)/getinfo.o \
	$(OBJDIR)/gopher.o \
	$(OBJDIR)/hash.o \
	$(OBJDIR)/hmac.o \
	$(OBJDIR)/hostasyn.o \
	$(OBJDIR)/hostcheck.o \
	$(OBJDIR)/hostip.o \
	$(OBJDIR)/hostip4.o \
	$(OBJDIR)/hostip6.o \
	$(OBJDIR)/hostsyn.o \
	$(OBJDIR)/http.o \
	$(OBJDIR)/http2.o \
	$(OBJDIR)/http_chunks.o \
	$(OBJDIR)/http_digest.o \
	$(OBJDIR)/http_negotiate.o \
	$(OBJDIR)/http_ntlm.o \
	$(OBJDIR)/http_proxy.o \
	$(OBJDIR)/idn_win32.o \
	$(OBJDIR)/if2ip.o \
	$(OBJDIR)/imap.o \
	$(OBJDIR)/inet_ntop.o \
	$(OBJDIR)/inet_pton.o \
	$(OBJDIR)/krb5.o \
	$(OBJDIR)/ldap.o \
	$(OBJDIR)/llist.o \
	$(OBJDIR)/md4.o \
	$(OBJDIR)/md5.o \
	$(OBJDIR)/memdebug.o \
	$(OBJDIR)/mprintf.o \
	$(OBJDIR)/multi.o \
	$(OBJDIR)/netrc.o \
	$(OBJDIR)/non-ascii.o \
	$(OBJDIR)/nonblock.o \
	$(OBJDIR)/nwlib.o \
	$(OBJDIR)/nwos.o \
	$(OBJDIR)/openldap.o \
	$(OBJDIR)/parsedate.o \
	$(OBJDIR)/pingpong.o \
	$(OBJDIR)/pipeline.o \
	$(OBJDIR)/pop3.o \
	$(OBJDIR)/progress.o \
	$(OBJDIR)/rand.o \
	$(OBJDIR)/rtsp.o \
	$(OBJDIR)/security.o \
	$(OBJDIR)/select.o \
	$(OBJDIR)/sendf.o \
	$(OBJDIR)/share.o \
	$(OBJDIR)/slist.o \
	$(OBJDIR)/smb.o \
	$(OBJDIR)/smtp.o \
	$(OBJDIR)/socks.o \
	$(OBJDIR)/socks_gssapi.o \
	$(OBJDIR)/socks_sspi.o \
	$(OBJDIR)/speedcheck.o \
	$(OBJDIR)/splay.o \
	$(OBJDIR)/ssh.o \
	$(OBJDIR)/strcase.o \
	$(OBJDIR)/strdup.o \
	$(OBJDIR)/strerror.o \
	$(OBJDIR)/strtok.o \
	$(OBJDIR)/strtoofft.o \
	$(OBJDIR)/system_win32.o \
	$(OBJDIR)/telnet.o \
	$(OBJDIR)/tftp.o \
	$(OBJDIR)/timeval.o \
	$(OBJDIR)/transfer.o \
	$(OBJDIR)/url.o \
	$(OBJDIR)/cleartext.o \
	$(OBJDIR)/cram.o \
	$(OBJDIR)/digest.o \
	$(OBJDIR)/digest_sspi.o \
	$(OBJDIR)/krb5_gssapi.o \
	$(OBJDIR)/krb5_sspi.o \
	$(OBJDIR)/ntlm.o \
	$(OBJDIR)/ntlm_sspi.o \
	$(OBJDIR)/oauth2.o \
	$(OBJDIR)/spnego_gssapi.o \
	$(OBJDIR)/spnego_sspi.o \
	$(OBJDIR)/vauth.o \
	$(OBJDIR)/version.o \
	$(OBJDIR)/axtls.o \
	$(OBJDIR)/cyassl.o \
	$(OBJDIR)/darwinssl.o \
	$(OBJDIR)/gskit.o \
	$(OBJDIR)/gtls.o \
	$(OBJDIR)/mbedtls.o \
	$(OBJDIR)/nss.o \
	$(OBJDIR)/openssl.o \
	$(OBJDIR)/polarssl.o \
	$(OBJDIR)/polarssl_threadlock.o \
	$(OBJDIR)/schannel.o \
	$(OBJDIR)/vtls.o \
	$(OBJDIR)/warnless.o \
	$(OBJDIR)/wildcard.o \
	$(OBJDIR)/x509asn1.o \

RESOURCES := \

CUSTOMFILES := \

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

$(TARGET): $(GCH) ${CUSTOMFILES} $(OBJECTS) $(LDDEPS) $(RESOURCES) | $(TARGETDIR)
	@echo Linking curl-lib
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(CUSTOMFILES): | $(OBJDIR)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning curl-lib
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) $(PCH) | $(OBJDIR)
$(GCH): $(PCH) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
else
$(OBJECTS): | $(OBJDIR)
endif

$(OBJDIR)/amigaos.o: ../../contrib/curl/lib/amigaos.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/asyn-ares.o: ../../contrib/curl/lib/asyn-ares.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/asyn-thread.o: ../../contrib/curl/lib/asyn-thread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/base64.o: ../../contrib/curl/lib/base64.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/conncache.o: ../../contrib/curl/lib/conncache.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/connect.o: ../../contrib/curl/lib/connect.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/content_encoding.o: ../../contrib/curl/lib/content_encoding.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cookie.o: ../../contrib/curl/lib/cookie.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_addrinfo.o: ../../contrib/curl/lib/curl_addrinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_des.o: ../../contrib/curl/lib/curl_des.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_endian.o: ../../contrib/curl/lib/curl_endian.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_fnmatch.o: ../../contrib/curl/lib/curl_fnmatch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_gethostname.o: ../../contrib/curl/lib/curl_gethostname.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_gssapi.o: ../../contrib/curl/lib/curl_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_memrchr.o: ../../contrib/curl/lib/curl_memrchr.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_multibyte.o: ../../contrib/curl/lib/curl_multibyte.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_ntlm_core.o: ../../contrib/curl/lib/curl_ntlm_core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_ntlm_wb.o: ../../contrib/curl/lib/curl_ntlm_wb.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_rtmp.o: ../../contrib/curl/lib/curl_rtmp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_sasl.o: ../../contrib/curl/lib/curl_sasl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_sspi.o: ../../contrib/curl/lib/curl_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/curl_threads.o: ../../contrib/curl/lib/curl_threads.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dict.o: ../../contrib/curl/lib/dict.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dotdot.o: ../../contrib/curl/lib/dotdot.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/easy.o: ../../contrib/curl/lib/easy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/escape.o: ../../contrib/curl/lib/escape.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/file.o: ../../contrib/curl/lib/file.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/fileinfo.o: ../../contrib/curl/lib/fileinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/formdata.o: ../../contrib/curl/lib/formdata.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ftp.o: ../../contrib/curl/lib/ftp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ftplistparser.o: ../../contrib/curl/lib/ftplistparser.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getenv.o: ../../contrib/curl/lib/getenv.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getinfo.o: ../../contrib/curl/lib/getinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gopher.o: ../../contrib/curl/lib/gopher.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hash.o: ../../contrib/curl/lib/hash.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hmac.o: ../../contrib/curl/lib/hmac.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostasyn.o: ../../contrib/curl/lib/hostasyn.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostcheck.o: ../../contrib/curl/lib/hostcheck.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostip.o: ../../contrib/curl/lib/hostip.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostip4.o: ../../contrib/curl/lib/hostip4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostip6.o: ../../contrib/curl/lib/hostip6.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/hostsyn.o: ../../contrib/curl/lib/hostsyn.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http.o: ../../contrib/curl/lib/http.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http2.o: ../../contrib/curl/lib/http2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_chunks.o: ../../contrib/curl/lib/http_chunks.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_digest.o: ../../contrib/curl/lib/http_digest.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_negotiate.o: ../../contrib/curl/lib/http_negotiate.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_ntlm.o: ../../contrib/curl/lib/http_ntlm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/http_proxy.o: ../../contrib/curl/lib/http_proxy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/idn_win32.o: ../../contrib/curl/lib/idn_win32.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/if2ip.o: ../../contrib/curl/lib/if2ip.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/imap.o: ../../contrib/curl/lib/imap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/inet_ntop.o: ../../contrib/curl/lib/inet_ntop.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/inet_pton.o: ../../contrib/curl/lib/inet_pton.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/krb5.o: ../../contrib/curl/lib/krb5.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ldap.o: ../../contrib/curl/lib/ldap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/llist.o: ../../contrib/curl/lib/llist.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md4.o: ../../contrib/curl/lib/md4.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/md5.o: ../../contrib/curl/lib/md5.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/memdebug.o: ../../contrib/curl/lib/memdebug.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mprintf.o: ../../contrib/curl/lib/mprintf.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/multi.o: ../../contrib/curl/lib/multi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/netrc.o: ../../contrib/curl/lib/netrc.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/non-ascii.o: ../../contrib/curl/lib/non-ascii.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nonblock.o: ../../contrib/curl/lib/nonblock.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nwlib.o: ../../contrib/curl/lib/nwlib.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nwos.o: ../../contrib/curl/lib/nwos.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/openldap.o: ../../contrib/curl/lib/openldap.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/parsedate.o: ../../contrib/curl/lib/parsedate.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pingpong.o: ../../contrib/curl/lib/pingpong.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pipeline.o: ../../contrib/curl/lib/pipeline.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pop3.o: ../../contrib/curl/lib/pop3.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/progress.o: ../../contrib/curl/lib/progress.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rand.o: ../../contrib/curl/lib/rand.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rtsp.o: ../../contrib/curl/lib/rtsp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/security.o: ../../contrib/curl/lib/security.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/select.o: ../../contrib/curl/lib/select.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/sendf.o: ../../contrib/curl/lib/sendf.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/share.o: ../../contrib/curl/lib/share.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/slist.o: ../../contrib/curl/lib/slist.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/smb.o: ../../contrib/curl/lib/smb.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/smtp.o: ../../contrib/curl/lib/smtp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/socks.o: ../../contrib/curl/lib/socks.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/socks_gssapi.o: ../../contrib/curl/lib/socks_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/socks_sspi.o: ../../contrib/curl/lib/socks_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/speedcheck.o: ../../contrib/curl/lib/speedcheck.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/splay.o: ../../contrib/curl/lib/splay.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssh.o: ../../contrib/curl/lib/ssh.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strcase.o: ../../contrib/curl/lib/strcase.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strdup.o: ../../contrib/curl/lib/strdup.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strerror.o: ../../contrib/curl/lib/strerror.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strtok.o: ../../contrib/curl/lib/strtok.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strtoofft.o: ../../contrib/curl/lib/strtoofft.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/system_win32.o: ../../contrib/curl/lib/system_win32.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/telnet.o: ../../contrib/curl/lib/telnet.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tftp.o: ../../contrib/curl/lib/tftp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/timeval.o: ../../contrib/curl/lib/timeval.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/transfer.o: ../../contrib/curl/lib/transfer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/url.o: ../../contrib/curl/lib/url.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cleartext.o: ../../contrib/curl/lib/vauth/cleartext.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cram.o: ../../contrib/curl/lib/vauth/cram.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/digest.o: ../../contrib/curl/lib/vauth/digest.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/digest_sspi.o: ../../contrib/curl/lib/vauth/digest_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/krb5_gssapi.o: ../../contrib/curl/lib/vauth/krb5_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/krb5_sspi.o: ../../contrib/curl/lib/vauth/krb5_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ntlm.o: ../../contrib/curl/lib/vauth/ntlm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ntlm_sspi.o: ../../contrib/curl/lib/vauth/ntlm_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/oauth2.o: ../../contrib/curl/lib/vauth/oauth2.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/spnego_gssapi.o: ../../contrib/curl/lib/vauth/spnego_gssapi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/spnego_sspi.o: ../../contrib/curl/lib/vauth/spnego_sspi.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/vauth.o: ../../contrib/curl/lib/vauth/vauth.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/version.o: ../../contrib/curl/lib/version.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/axtls.o: ../../contrib/curl/lib/vtls/axtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cyassl.o: ../../contrib/curl/lib/vtls/cyassl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/darwinssl.o: ../../contrib/curl/lib/vtls/darwinssl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gskit.o: ../../contrib/curl/lib/vtls/gskit.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/gtls.o: ../../contrib/curl/lib/vtls/gtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mbedtls.o: ../../contrib/curl/lib/vtls/mbedtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nss.o: ../../contrib/curl/lib/vtls/nss.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/openssl.o: ../../contrib/curl/lib/vtls/openssl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/polarssl.o: ../../contrib/curl/lib/vtls/polarssl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/polarssl_threadlock.o: ../../contrib/curl/lib/vtls/polarssl_threadlock.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/schannel.o: ../../contrib/curl/lib/vtls/schannel.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/vtls.o: ../../contrib/curl/lib/vtls/vtls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/warnless.o: ../../contrib/curl/lib/warnless.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wildcard.o: ../../contrib/curl/lib/wildcard.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x509asn1.o: ../../contrib/curl/lib/x509asn1.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif