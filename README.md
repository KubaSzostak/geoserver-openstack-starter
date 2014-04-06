GeoServer starter for OpenShift
===============================

How to run GeoServer on OpenShift:
----------------------------------

- Login to OpenShift
- Start creating new Tomcat 7 application
- Enter Source Code (Optional URL to a Git repository):
  https://github.com/kubaszostak/geoserver-openstack-starter.git
  on Configure the application page.
- SSH to Your new application: 
  rhc ssh -a [app-name]
- Copy geoserver_data folder: 
  cp -a $OPENSHIFT_REPO_DIR/data/. $OPENSHIFT_DATA_DIR/
- Grant GeoServer access to data folder: chmod -R ugo+rw $OPENSHIFT_DATA_DIR/geoserver_data/
- Clone repository from OpenShift
- Change someting not important (add space) to src/main/webapp/index.html
- Push repository back to OpenShift (this will marven recompile)
- Wait for application restarting...
- Wait a litte bit more...
- Login to Your application under /geoserver/web/ subdir
