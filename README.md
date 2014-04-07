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
```sh
rhc ssh -a [app-name]
```
- Copy geoserver_data folder: 
```sh
cp -a $OPENSHIFT_REPO_DIR/data/. $OPENSHIFT_DATA_DIR/
```
- Grant GeoServer access to data folder: 
```sh
chmod -R ugo+rw $OPENSHIFT_DATA_DIR/geoserver_data/
```
- Restart Your application on OpenShift
- Wait for application restarting...
- Wait a litte bit more...
- Login to Your application under /geoserver/web/ subdir
