pkg_origin=learn-chef
pkg_name=mongodb-parks
pkg_version=3.2.9
pkg_description="MongoDB for the National Parks app"
pkg_maintainer="The Chef Training Team <training@chef.io>"
pkg_license=('AGPL-3.0')
pkg_deps=(core/mongodb core/mongo-tools)

pkg_svc_run="mongod --config $pkg_svc_config_path/mongod.conf"
pkg_svc_user=hab
pkg_svc_group=hab

pkg_exports=(
  [port]=mongod.net.port
)

do_build() {
  return 0
}

do_install() {
  cp -r $PLAN_CONTEXT/../national-parks.json $pkg_prefix/
}
