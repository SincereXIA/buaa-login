include $(TOPDIR)/rules.mk
 
PKG_NAME:=buaa-login
PKG_VERSION:=0.1
PKG_RELEASE:=1
 
PKG_BUILD_DIR:=$(BUILD_DIR)/buaa-login-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
 
define Package/buaa-login
	SECTION:=base
	CATEGORY:=Network
	TITLE:=BUAA Login
	#DESCRIPTION:=This variable is obsolete. use the Package/name/description define instead!
endef
 
define Package/buaa-login/description
	login to BUAA-Wifi
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef
 
define Build/Configure
	$(call Build/Configure/Default,--with-linux-headers=$(LINUX_DIR))
endef

define Build/Compile
	echo "Build"
endef
 
define Package/buaa-login/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/buaa-login.sh $(1)/usr/sbin/
endef
 
$(eval $(call BuildPackage,buaa-login))